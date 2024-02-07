
import { Server } from 'socket.io';
import models from '../models/models.js';

import playSocketMethods from './play.js';

const model = models();
const playMethods = playSocketMethods();

const { animals,
  score,
  Player,
  roomInfo } = model

const {
  getRoomInfoForGame,
  sendGameInfo,
} = playMethods;

/**
 * 카드 셔플 후 분배
 */
const shuffleArray = (rooms, roomName) => {
  rooms[roomName].card = Array.from({ length: 64 }, (_, i) => i);
  let array = rooms[roomName].card;
  for (let i = array.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [array[i], array[j]] = [array[j], array[i]];
  }
  let i = 20;
  console.log(`##### room card : ${rooms[roomName].card}`);

  while (i > 0) {
    i--;
    for (let psq in rooms[roomName].ps) {
      if (rooms[roomName].card.length === 0) {
        break;
      }
      rooms[roomName].ps[psq].hand.push(rooms[roomName].card.pop());
    }
  }
}

/**
 * 방 생성 (방이 존재하지 않는 경우)
 */
const addRoom = (rooms, roomName, playerSequenceNumber, socketId, playerNickName) => {

  rooms[roomName] = JSON.parse(JSON.stringify(roomInfo)); // 깊은 복사로 수정 완료
  rooms[roomName].roomName = roomName;
  rooms[roomName].ps[playerSequenceNumber] = { ...Player(playerSequenceNumber, socketId, playerNicmName) };
  rooms[roomName].adm = playerSequenceNumber;
  console.log(`##### [addRoom] player ${playerSequenceNumber} socket ${socketId} playerNN ${playerNickName} created Room ${roomName}`);
  /*TODO - send room data to backend server!!! */

  console.log(`##### [addRoom] create room : ${roomName}`);
}

/**
 * 유저 추가 (방이 존재하는 경우)
 */
const addPlayer = (io, socket, rooms, roomName, playerSequenceNumber, socketId, playerNickName) => {
  let isFirst = true;
  console.log(rooms[roomName]);
  // 이미 방에 들어가 있는지 체크 
  
  for (let player in rooms[roomName].ps) {
    if (player === playerSequenceNumber) {
      isFirst = false;
      break;
    }
  }
  
  if (isFirst) {
    let newPlayer = {...Player(playerSequence, socketId, playerNickName)}
    let playerData = {
      'psq': newPlayer.psq,
      'pn': newPlayer.pn,
    }
    console.log("##### [addPlayer] player Enter Message emitted");
    for (let k = 0; k < rooms[roomName].players.length; k++) {
      io.to(roomName).emit('playerEnter', playerData)
    }
    rooms[roomName].playerCount++;
    rooms[roomName].ps[playerSequenceNumber] = { ...newPlayer };
  }
  console.log(`##### [addPlayer] p : ${playerSequenceNumber} s : ${socketId} pn : ${playerNickName} 
      entered Room ${roomName}`);
  
  /*TODO - send room data and player data to backend server */

}

/**
 * 로비 데이터 보내기
 */
const getRoomInfoForLobby = (rooms) => {
  let lobbyInfo = {};

  for (let room in rooms) {
    let info = rooms[room];
    lobbyInfo[room] = {
      'roomId': info['rid'],
      'roomName': info['rnm'],
      'roomAddress': info['radr'],
      'status': info['status'],
      'createdDate': info['cdt'],
      'playerCount': info['pc'],
      'adminPlayer': info['adm'],
    };
  }
  return lobbyInfo;
}

/* 방 삭제 */
const removeRoom = (rooms, room) => {
  delete rooms[room];
}

/**
 * 유저 퇴장 
 */
const removePlayer = (io, socket, rooms, room, psq) => {

  delete rooms[room].ps[psq];
  rooms[room].pc -= 1;
  io.to(room).emit('playerLeave', psq);
  if (rooms[room].pc === 0) {
    removeRoom(rooms, room);
  }
};

const handleDisconnect = (socket, io, rooms) => {
  //TODO - handles the disconnection situation
}


const roomSocketMethods = () => {
  /**
   * Socket IO 관련 함수들 정의
   */

  /* 방 정보 전달 / 로비에서 사용 */
  const sendRoomInfo = async (socket, io, rooms) => {
    socket.on('requestRoomsInfo', (callback) => {
      console.log("##### [sendRoomInfo] callback roomsInfo");
      // roomName, roomId, playerCount, roomAdmin, roomStatus 전달
      callback(getRoomInfoForLobby(rooms));
    });
  }

  /* 방 생성 이벤트 */
  const createRoom = async (socket, io, rooms) => {
    socket.on('createRoom', (room, psq, pnn, callback) => {
      if (Object.keys(rooms).includes(room)) {
        callback(false);
      } else {
        // 기존방 나가기
        for (let nowRoom of socket.rooms) {
          if (nowRoom !== socket.id) {
            socket.leave(nowRoom);
            delete rooms[nowRoom];
          }
        }

        addRoom(rooms, room, psq, socket.id, pnn);
        console.log(`##### [createRoom] player [${socket.id}], make room ${room}`)

        // 입력받은 방 들어가기
        socket.join(room);
        rooms[room].nt = pid;
        callback(true);
      }
    });
  }

  /* 방 입장 이벤트 */
  const enterRoom = async (socket, io, rooms) => {
    socket.on('enterRoom', (room, psq, pnn, callback) => {
      // 인원수 체크
      if (rooms[room] && rooms[room].pc >= 6) {
        callback(false);
      } else {
        // 기존방 나가기
        for (let nowRoom of socket.rooms) {
          if (nowRoom !== socket.id) {
            socket.leave(nowRoom);
            removePlayer(io, socket, rooms, nowRoom, psq);
          }
        }

        for( let rn in rooms){
          for(let p in rooms[rn].ps){
            if(p === psq){
              removePlayer(io, socket, rooms, rn, psq);
            }
          }
        }

        // 입력받은 방 들어가기
        socket.join(room);

        // console.log(io.of('/').adapter.rooms);
        socket.emit('updateRoom', rooms);
        addPlayer(io, socket, rooms, room, pid, socket.id, pnn)
        callback(true)
        console.log(`##### [enterRoom] player ${socket.id} join room : ${room}`);
      }
    });
  }

  // 방 퇴장
  const leaveRoom = async (socket, io, rooms) => {
    socket.on('leaveRoom', (room, psq, callback) => {
      console.log(`##### [leaveRoom] leave Room, ${room} and ${psq}`)
      removePlayer(socket, io, rooms, room, psq);
      socket.leave(room);
    })

  }



  /* 방 새로고침 이벤트 */
  const checkReconnection = async (socket, io, rooms) => {
    socket.on('checkReconnection', (psq, callback) => {
      console.log(`##### [checkReconnection] Checking Reconnection of User ${psq}`);
      try {
        for (let room in rooms) {
          for (let p in rooms[room].ps) {
            if (p === psq) {
              rooms[room].p.sid = socket.id;
              socket.join(room);
              break;
            }
          }
        }
      } catch (err) {
        console.log(err);
      }
    })
  }

  /* 채팅 메세지 이벤트 */
  const chatMessage = async (socket, io, rooms) => {
    socket.on('chatMessage', async (msg, user) => {
      let room;
      for (let nowRoom of socket.rooms) {
        if (nowRoom !== socket.id) {
          room = nowRoom;
        }
      }
      console.log(`##### chat message : ${msg} + " / room : " + ${room}`);
      io.to(room).emit('chatMessage', user + " : " + msg + "," + room);
    });
  }


  /* 게임시작 카드 나눠주기 */
  const cardShare = async (socket, io, rooms) => {
    socket.on('start', (roomName) => {
      console.log(`##### [cardShare] current Room : [${(roomName)}]`);
      shuffleArray(rooms, roomName);
      console.log('##### [cardShare] Shuffle End')

      rooms[roomName].game.status = 1;
      for (let psq in rooms[roomName].ps) {
        io.to(rooms[roomName].players[psq].socketId).emit('gameStart', rooms[roomName].players[psq].hand)
      }
      console.log(`##### [cardShare] card ended : ${rooms}`);
    });
  }

  /** 방 정보 테스트 구동  */
  const testRoomsInfo = async (socket, io, rooms) => {
    socket.on('testRoomsInfo', (callback) => {
      console.log("#### test Room Info")
      callback(rooms);
    })
  }

  const disconnected = async (socket, io, rooms) => {
    let disconnectedTimeout;
    socket.on('disconnect', () => {
      console.log('##### disconnect socket');
      disconnectedTimeout = setTimeout((socket, io, rooms) => {
        handleDisconnect(socket, io, rooms);
      }, 5, 60, 1000);
    })
  }

  return {
    sendRoomInfo,
    createRoom,
    enterRoom,
    chatMessage,
    cardShare,
    testRoomsInfo,
    disconnected,
    checkReconnection,
    leaveRoom,
  }
}

export default roomSocketMethods;
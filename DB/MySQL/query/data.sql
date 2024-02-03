-- animal 초기 데이터
INSERT INTO animal (animal_id, animal_eng_name, animal_kor_name)
VALUES
("TIGER01", "tiger", "호랑이"),
("CAT02", "cat", "고양이"),
("DOG03", "dog", "강아지 "),
("DEER04", "deer", "고라니"),
("PIG05", "pig", "돼지"),
("FOX06", "fox", "여우"),
("SHEEP07", "sheep", "양"),
("WHALE08", "whale", "혹등고래");

-- user 초기 데이터
INSERT INTO `user` (`user_sequence`, `email`, `name`, `nickname`, `password`, `role`, `profile_number`, `user_id`)
VALUES (101, 'test1@test.com', '이상혁', 'FAKER', '$2a$10$GwlIO8E9M0WdZuRskEBcqOmjNDfl4oqZA76YQ1.hmEpdXjoBlaf7W', 'USER', '000','test1'),
(102, 'test2@test.com', '김중광', '미칠광 가운데중', '$2a$10$GwlIO8E9M0WdZuRskEBcqOmjNDfl4oqZA76YQ1.hmEpdXjoBlaf7W', 'USER', '37', 'test2'),
(103, 'test3@test.com', '구마적', '구마유시', '$2a$10$GwlIO8E9M0WdZuRskEBcqOmjNDfl4oqZA76YQ1.hmEpdXjoBlaf7W', 'USER', '38', 'test3'),
(104, 'test4@test.com', '김김김', 'kim kim', '$2a$10$GwlIO8E9M0WdZuRskEBcqOmjNDfl4oqZA76YQ1.hmEpdXjoBlaf7W', 'USER', '39', 'test4'),
(105, 'test5@test.com', '이상혁', 'hide on bush', '$2a$10$GwlIO8E9M0WdZuRskEBcqOmjNDfl4oqZA76YQ1.hmEpdXjoBlaf7W', '40','USER', 'test5'),
(106, 'test6@test.com', '정지훈', 'chovy', '$2a$10$GwlIO8E9M0WdZuRskEBcqOmjNDfl4oqZA76YQ1.hmEpdXjoBlaf7W', 'USER', '41','test6'),
(107, 'test7@test.com', '김기인', 'kiin', '$2a$10$GwlIO8E9M0WdZuRskEBcqOmjNDfl4oqZA76YQ1.hmEpdXjoBlaf7W', 'USER', '42','test7'),
(108, 'test8@test.com', '곰돌이', '곰돌이 푸우', '$2a$10$GwlIO8E9M0WdZuRskEBcqOmjNDfl4oqZA76YQ1.hmEpdXjoBlaf7W', 'USER', '43', 'test8'),
(109, 'test9@test.com', '제니', '블랙핑크', '$2a$10$GwlIO8E9M0WdZuRskEBcqOmjNDfl4oqZA76YQ1.hmEpdXjoBlaf7W', 'USER', '44','test9'),
(110, 'test10@test.com', '오지혜', '헤일리', '$2a$10$GwlIO8E9M0WdZuRskEBcqOmjNDfl4oqZA76YQ1.hmEpdXjoBlaf7W', 'USER', '45','test10'),
(111, 'test11@test.com', '유승호', '호승이', '$2a$10$GwlIO8E9M0WdZuRskEBcqOmjNDfl4oqZA76YQ1.hmEpdXjoBlaf7W', 'USER', '46','test11'),
(112, 'test12@test.com', '유재영', '구월동 휴그랜트', '$2a$10$GwlIO8E9M0WdZuRskEBcqOmjNDfl4oqZA76YQ1.hmEpdXjoBlaf7W', 'USER', '47','test12'),
(113, 'test13@test.com', '조용환', '아빠 안잔다', '$2a$10$GwlIO8E9M0WdZuRskEBcqOmjNDfl4oqZA76YQ1.hmEpdXjoBlaf7W', 'USER', '48', 'test13'),
(114, 'test14@test.com', '박준형', '풀무원', '$2a$10$GwlIO8E9M0WdZuRskEBcqOmjNDfl4oqZA76YQ1.hmEpdXjoBlaf7W', 'USER', '49','test14'),
(115, 'test15@test.com', '이선철', '배곧최수종', '$2a$10$GwlIO8E9M0WdZuRskEBcqOmjNDfl4oqZA76YQ1.hmEpdXjoBlaf7W', 'USER', '50','test15');

-- player 테이블 초기 데이터
INSERT INTO player (player_sequence, attack_score, defense_score, pass_score, total_round, total_turn, total_pass, exp, player_level, user_sequence)
VALUES
(1, 85.0, 90.5, 78.2, 15, 10, 10, 0, 0, 101),
(2, 78.5, 88.0, 92.3, 20, 15, 10, 0, 0, 102),
(3, 92.8, 85.5, 80.1, 18, 12, 10, 0, 0, 103),
(4, 185.0, 77.5, 71.2, 35, 10, 10, 0, 0, 104),
(5, 54.5, 5.0, 12.3, 20, 15, 10, 0, 0,  105),
(6, 77.8, 32.5, 180.1, 18, 12, 10, 0, 0, 106),
(7, 25.0, 91.5, 118.2, 15, 10, 10, 0, 0, 107),
(8, 45.5, 33.0, 92.3, 20, 15, 10, 0, 0, 108),
(9, 19.8, 12.5, 180.1, 18, 12, 10, 0, 0, 109),
(10, 185.0, 110.5, 68.1, 15, 10, 10, 0, 0, 110),
(11, 33.5, 18.0, 12.3, 20, 15, 10, 0, 0, 111),
(12, 44.8, 5.5, 83.1, 18, 12, 10, 0, 0, 112),
(13, 56.0, 10.5, 79.2, 15, 10, 10, 0, 0, 113),
(14, 88.5, 28.0, 91.3, 20, 15, 10, 0, 0,114),
(15, 21.2, 75.5, 81.1, 18, 12, 10,0, 0, 115);


-- player_animal 초기 데이터
INSERT INTO player_animal(player_sequence, animal_id, attack_success, attack_fail, defense_success, defense_fail, trust, distrust, truth, lie)
VALUES

(1, 'TIGER01', 100, 100, 100, 100, 100, 100, 100, 100),(1, 'CAT02', 100, 100, 100, 100, 100, 100, 100, 100),(1, 'DOG03', 100, 100, 100, 100, 100, 100, 100, 100),
(1, 'DEER04', 100, 100, 100, 100, 100, 100, 100, 100),(1, 'PIG05', 100, 100, 100, 100, 100, 100, 100, 100),(1, 'FOX06', 100, 100, 100, 100, 100, 100, 100, 100),
(1, 'SHEEP07', 100, 100, 100, 100, 100, 100, 100, 100),(1, 'WHALE08', 100, 100, 100, 100, 100, 100, 100, 100),
(2, 'TIGER01', 100, 0, 0, 0, 0, 0, 0, 0),(2, 'CAT02', 0, 0, 0, 0, 0, 0, 0, 0),(2, 'DOG03', 0, 0, 0, 0, 0, 0, 0, 0),(2, 'DEER04', 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'PIG05', 0, 0, 0, 0, 0, 0, 0, 0),(2, 'FOX06', 0, 0, 0, 0, 0, 0, 0, 0),(2, 'SHEEP07', 0, 0, 0, 0, 0, 0, 0, 0),(2, 'WHALE08', 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'TIGER01', 0, 0, 0, 0, 0, 0, 0, 0),(3, 'CAT02', 0, 0, 0, 0, 0, 0, 0, 0),(3, 'DOG03', 0, 0, 0, 0, 0, 0, 0, 0),(3, 'DEER04', 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'PIG05', 0, 0, 0, 0, 0, 0, 0, 0),(3, 'FOX06', 0, 0, 0, 0, 0, 0, 0, 0),(3, 'SHEEP07', 0, 0, 0, 0, 0, 0, 0, 0),(3, 'WHALE08', 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'TIGER01', 0, 0, 0, 0, 0, 0, 0, 0),(4, 'CAT02', 0, 0, 0, 0, 0, 0, 0, 0),(4,'DOG03', 0, 0, 0, 0, 0, 0, 0, 0),(4, 'DEER04', 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'PIG05', 0, 0, 0, 0, 0, 0, 0, 0),(4, 'FOX06', 0, 0, 0, 0, 0, 0, 0, 0),(4, 'SHEEP07', 0, 0, 0, 0, 0, 0, 0, 0),(4, 'WHALE08', 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'TIGER01', 0, 0, 0, 0, 0, 0, 0, 0),(5, 'CAT02', 0, 0, 0, 0, 0, 0, 0, 0),(5, 'DOG03', 0, 0, 0, 0, 0, 0, 0, 0),(5, 'DEER04', 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'PIG05', 0, 0, 0, 0, 0, 0, 0, 0),(5, 'FOX06', 0, 0, 0, 0, 0, 0, 0, 0),(5, 'SHEEP07', 0, 0, 0, 0, 0, 0, 0, 0),(5, 'WHALE08', 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'TIGER01', 0, 0, 0, 0, 0, 0, 0, 0),(6, 'CAT02', 0, 0, 0, 0, 0, 0, 0, 0),(6, 'DOG03', 0, 0, 0, 0, 0, 0, 0, 0),(6, 'DEER04', 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'PIG05', 0, 0, 0, 0, 0, 0, 0, 0),(6, 'FOX06', 0, 0, 0, 0, 0, 0, 0, 0),(6, 'SHEEP07', 0, 0, 0, 0, 0, 0, 0, 0),(6, 'WHALE08', 0, 0, 0, 0, 0, 0, 0, 0),
(7, 'TIGER01', 0, 0, 0, 0, 0, 0, 0, 0),(7, 'CAT02', 0, 0, 0, 0, 0, 0, 0, 0),(7, 'DOG03', 0, 0, 0, 0, 0, 0, 0, 0),(7, 'DEER04', 0, 0, 0, 0, 0, 0, 0, 0),
(7, 'PIG05', 0, 0, 0, 0, 0, 0, 0, 0),(7, 'FOX06', 0, 0, 0, 0, 0, 0, 0, 0),(7, 'SHEEP07', 0, 0, 0, 0, 0, 0, 0, 0),(7, 'WHALE08', 0, 0, 0, 0, 0, 0, 0, 0),
(8, 'TIGER01', 0, 0, 0, 0, 0, 0, 0, 0),(8, 'CAT02', 0, 0, 0, 0, 0, 0, 0, 0),(8, 'DOG03', 0, 0, 0, 0, 0, 0, 0, 0),(8, 'DEER04', 0, 0, 0, 0, 0, 0, 0, 0),
(8, 'PIG05', 0, 0, 0, 0, 0, 0, 0, 0),(8, 'FOX06', 0, 0, 0, 0, 0, 0, 0, 0),(8, 'SHEEP07', 0, 0, 0, 0, 0, 0, 0, 0),(8, 'WHALE08', 0, 0, 0, 0, 0, 0, 0, 0),
(9, 'TIGER01', 0, 0, 0, 0, 0, 0, 0, 0),(9, 'CAT02', 0, 0, 0, 0, 0, 0, 0, 0),(9, 'DOG03', 0, 0, 0, 0, 0, 0, 0, 0),(9, 'DEER04', 0, 0, 0, 0, 0, 0, 0, 0),
(9, 'PIG05', 0, 0, 0, 0, 0, 0, 0, 0),(9, 'FOX06', 0, 0, 0, 0, 0, 0, 0, 0),(9, 'SHEEP07', 0, 0, 0, 0, 0, 0, 0, 0),(9, 'WHALE08', 0, 0, 0, 0, 0, 0, 0, 0),
(10, 'TIGER01', 0, 0, 0, 0, 0, 0, 0, 0),(10, 'CAT02', 0, 0, 0, 0, 0, 0, 0, 0),(10, 'DOG03', 0, 0, 0, 0, 0, 0, 0, 0),(10, 'DEER04', 0, 0, 0, 0, 0, 0, 0, 0),
(10, 'PIG05', 0, 0, 0, 0, 0, 0, 0, 0),(10, 'FOX06', 0, 0, 0, 0, 0, 0, 0, 0),(10, 'SHEEP07', 0, 0, 0, 0, 0, 0, 0, 0),(10, 'WHALE08', 0, 0, 0, 0, 0, 0, 0, 0),
(11, 'TIGER01', 0, 0, 0, 0, 0, 0, 0, 0),(11, 'CAT02', 0, 0, 0, 0, 0, 0, 0, 0),(11, 'DOG03', 0, 0, 0, 0, 0, 0, 0, 0),(11, 'DEER04', 0, 0, 0, 0, 0, 0, 0, 0),
(11, 'PIG05', 0, 0, 0, 0, 0, 0, 0, 0),(11, 'FOX06', 0, 0, 0, 0, 0, 0, 0, 0),(11, 'SHEEP07', 0, 0, 0, 0, 0, 0, 0, 0),(11, 'WHALE08', 0, 0, 0, 0, 0, 0, 0, 0),
(12, 'TIGER01', 0, 0, 0, 0, 0, 0, 0, 0),(12, 'CAT02', 0, 0, 0, 0, 0, 0, 0, 0),(12, 'DOG03', 0, 0, 0, 0, 0, 0, 0, 0),(12, 'DEER04', 0, 0, 0, 0, 0, 0, 0, 0),
(12, 'PIG05', 0, 0, 0, 0, 0, 0, 0, 0),(12, 'FOX06', 0, 0, 0, 0, 0, 0, 0, 0),(12, 'SHEEP07', 0, 0, 0, 0, 0, 0, 0, 0),(12, 'WHALE08', 0, 0, 0, 0, 0, 0, 0, 0),
(13, 'TIGER01', 0, 0, 0, 0, 0, 0, 0, 0),(13, 'CAT02', 0, 0, 0, 0, 0, 0, 0, 0),(13, 'DOG03', 0, 0, 0, 0, 0, 0, 0, 0),(13, 'DEER04', 0, 0, 0, 0, 0, 0, 0, 0),
(13, 'PIG05', 0, 0, 0, 0, 0, 0, 0, 0),(13, 'FOX06', 0, 0, 0, 0, 0, 0, 0, 0),(13, 'SHEEP07', 0, 0, 0, 0, 0, 0, 0, 0),(13, 'WHALE08', 0, 0, 0, 0, 0, 0, 0, 0),
(14, 'TIGER01', 0, 0, 0, 0, 0, 0, 0, 0),(14, 'CAT02', 0, 0, 0, 0, 0, 0, 0, 0),(14, 'DOG03', 0, 0, 0, 0, 0, 0, 0, 0),(14, 'DEER04', 0, 0, 0, 0, 0, 0, 0, 0),
(14, 'PIG05', 0, 0, 0, 0, 0, 0, 0, 0),(14, 'FOX06', 0, 0, 0, 0, 0, 0, 0, 0),(14, 'SHEEP07', 0, 0, 0, 0, 0, 0, 0, 0),(14, 'WHALE08', 0, 0, 0, 0, 0, 0, 0, 0),
(15, 'TIGER01', 0, 0, 0, 0, 0, 0, 0, 0),(15, 'CAT02', 0, 0, 0, 0, 0, 0, 0, 0),(15, 'DOG03', 0, 0, 0, 0, 0, 0, 0, 0),(15, 'DEER04', 0, 0, 0, 0, 0, 0, 0, 0),
(15, 'PIG05', 0, 0, 0, 0, 0, 0, 0, 0),(15, 'FOX06', 0, 0, 0, 0, 0, 0, 0, 0),(15, 'SHEEP07', 0, 0, 0, 0, 0, 0, 0, 0),(15, 'WHALE08', 0, 0, 0, 0, 0, 0, 0, 0);

-- 업적 데이터 
INSERT INTO rewards(rewards_id, animal_id, rewards_name, rewards_key, rewards_value)
VALUES
('T001',"TIGER01", "호랑이 제왕", "attackSuccess", 100),('T002',"TIGER01", "호랑나비", "attackFail", 100),
('T003',"TIGER01", "햇님달님", "defenseSuccess", 100),('T004',"TIGER01", "호랑이 패배자", "defenseFail", 100),
('T005',"TIGER01", "호랑이 신봉자", "trust", 100),('T006',"TIGER01", "호랑이 혐오자", "distrust", 100),
('T007',"TIGER01", "백호", "truth", 100),('T008',"TIGER01", "호랑일", "lie", 100),
('C001',"CAT02" , "냥냥 펀치", "attackSuccess", 100),('C002',"CAT02", "냥냥 물주먹", "attackFail", 100),
('C003',"CAT02", "냐옹이", "defenseSuccess", 100),('C004',"CAT02", "생쥐", "defenseFail", 100),
('C005',"CAT02", "고양이 집사", "trust", 100),('C006',"CAT02", "미워할 고양", "distrust", 100),
('C007',"CAT02", "냐옹 냐옹", "truth", 100),('C008',"CAT02", "경기도 고양", "lie", 100),
('D001',"DOG03" , "군견병", "attackSuccess", 100),('D002',"DOG03", "강아지", "attackFail", 100),
('D003',"DOG03", "셰펴드", "defenseSuccess", 100),('D004',"DOG03", "시츄", "defenseFail", 100),
('D005',"DOG03", "강형욱", "trust", 100),('D006',"DOG03", "유기견", "distrust", 100),
('D007',"DOG03", "골든 리트리버", "truth", 100),('D008',"DOG03", "개세희", "lie", 100),
('DE01',"DEER04", "고라니 헌터", "attackSuccess", 100),('DE02',"DEER04", "사슴", "attackFail", 100),
('DE03',"DEER04", "철갑 고라니", "defenseSuccess", 100),('DE04',"DEER04", "꽃사슴", "defenseFail", 100),
('DE05',"DEER04", "신뢰의 고라니", "trust", 100),('DE06',"DEER04", "고라파덕", "distrust", 100),
('DE07',"DEER04", "고라니 집사", "truth", 100),('DE08',"DEER04", "고니", "lie", 100),
('P001',"PIG05", "멧돼지", "attackSuccess", 100),('P002',"PIG05", "삼겹살", "attackFail", 100),
('P003',"PIG05", "두꺼운돼지지방", "defenseSuccess", 100),('P004',"PIG05", "오겹살", "defenseFail", 100),
('P005',"PIG05", "제주도 흑돼지", "trust", 100),('P006',"PIG05", "베지테리언", "distrust", 100),
('P007',"PIG05", "1등급 돼지", "truth", 100),('P008',"PIG05", "아기돼지삼형제", "lie", 100),
('F001',"FOX06", "여우 같은 곰", "attackSuccess", 100),('F002',"FOX06", "북극 여우", "attackFail", 100),
('F003',"FOX06", "사막 여우", "defenseSuccess", 100),('F004',"FOX06", "나약한 여우", "defenseFail", 100),
('F005',"FOX06", "진실한 여우", "trust", 100),('F006',"FOX06", "여우 같은 속마음", "distrust", 100),
('F007',"FOX06", "여호와", "truth", 100),('F008',"FOX06", "늑대같은 여우", "lie", 100),
('S001',"SHEEP07", "양치기 소년", "attackSuccess", 100),('S002',"SHEEP07", "순한 양", "attackFail", 100),
('S003',"SHEEP07", "철갑 양", "defenseSuccess", 100),('S004',"SHEEP07", "나약한 양", "defenseFail", 100),
('S005',"SHEEP07", "양 떼 목장", "trust", 100),('S006',"SHEEP07", "늑대", "distrust", 100),
('S007',"SHEEP07", "보더 콜리", "truth", 100),('S008',"SHEEP07", "강원도 양양", "lie", 100),
('W001',"WHALE08", "바다의 악동 범고래", "attackSuccess", 100),('W002',"WHALE08", "아이큐 낮은 돌고래", "attackFail", 100),
('W003',"WHALE08", "바다의 천사 혹등고래", "defenseSuccess", 100),('W004',"WHALE08", "벨루가", "defenseFail", 100),
('W005',"WHALE08", "흰수염 고래", "trust", 100), ('W006',"WHALE08", "검은 수염 고래", "distrust", 100),
('W007',"WHALE08", "아기고래", "truth", 100),('W008',"WHALE08", "고래밥", "lie", 100);

-- 플레이어-업적 데이터 
INSERT INTO player_rewards(player_sequence, rewards_id)
VALUES
(1, "T001"), (1, "T002"), (1, "T003"), (1, "T004"), (1, "T005"), (1, "T006"), (1, "T007"), (1, "T008"),
(1, "C001"), (1, "C002"), (1, "C003"), (1, "C004"), (1, "C005"), (1, "C006"), (1, "C007"), (1, "C008"),
(1, "D001"), (1, "D002"), (1, "D003"), (1, "D004"), (1, "D005"), (1, "D006"), (1, "D007"), (1, "D008"),
(1, "DE01"), (1, "DE02"), (1, "DE03"), (1, "DE04"), (1, "DE05"), (1, "DE06"), (1, "DE07"), (1, "DE08"),
(1, "P001"), (1, "P002"), (1, "P003"), (1, "P004"), (1, "P005"), (1, "P006"), (1, "P007"), (1, "P008"),
(1, "F001"), (1, "F002"), (1, "F003"), (1, "F004"), (1, "F005"), (1, "F006"), (1, "F007"), (1, "F008"),
(1, "S001"), (1, "S002"), (1, "S003"), (1, "S004"), (1, "S005"), (1, "S006"), (1, "S007"), (1, "S008"),
(1, "W001"), (1, "W002"), (1, "W003"), (1, "W004"), (1, "W005"), (1, "W006"), (1, "W007"), (1, "W008"),
(2, "T001"), (2, "T002"), (2, "T003"), (2, "T004"), (2, "T005"), (2, "T006"), (2, "T007"), (2, "T008"),
(2, "C001"), (2, "C002"), (2, "C003"), (2, "C004"), (2, "C005"), (2, "C006"), (2, "C007"), (2, "C008"),
(2, "D001"), (2, "D002"), (2, "D003"), (2, "D004"), (2, "D005"), (2, "D006"), (2, "D007"), (2, "D008"),
(2, "DE01"), (2, "DE02"), (2, "DE03"), (2, "DE04"), (2, "DE05"), (2, "DE06"), (2, "DE07"), (2, "DE08"),
(2, "P001"), (2, "P002"), (2, "P003"), (2, "P004"), (2, "P005"), (2, "P006"), (2, "P007"), (2, "P008"),
(2, "F001"), (2, "F002"), (2, "F003"), (2, "F004"), (2, "F005"), (2, "F006"), (2, "F007"), (2, "F008"),
(2, "S001"), (2, "S002"), (2, "S003"), (2, "S004"), (2, "S005"), (2, "S006"), (2, "S007"), (2, "S008"),
(2, "W001"), (2, "W002"), (2, "W003"), (2, "W004"), (2, "W005"), (2, "W006"), (2, "W007"), (2, "W008"),
(3, "T001"), (3, "T002"), (3, "T003"), (3, "T004"), (3, "T005"), (3, "T006"), (3, "T007"), (3, "T008"),
(3, "C001"), (3, "C002"), (3, "C003"), (3, "C004"), (3, "C005"), (3, "C006"), (3, "C007"), (3, "C008"),
(3, "D001"), (3, "D002"), (3, "D003"), (3, "D004"), (3, "D005"), (3, "D006"), (3, "D007"), (3, "D008"),
(3, "DE01"), (3, "DE02"), (3, "DE03"), (3, "DE04"), (3, "DE05"), (3, "DE06"), (3, "DE07"), (3, "DE08"), 
(3, "P001"), (3, "P002"), (3, "P003"), (3, "P004"), (3, "P005"), (3, "P006"), (3, "P007"), (3, "P008"),
(3, "F001"), (3, "F002"), (3, "F003"), (3, "F004"), (3, "F005"), (3, "F006"), (3, "F007"), (3, "F008"),
(3, "S001"), (3, "S002"), (3, "S003"), (3, "S004"), (3, "S005"), (3, "S006"), (3, "S007"), (3, "S008"),
(3, "W001"), (3, "W002"), (3, "W003"), (3, "W004"), (3, "W005"), (3, "W006"), (3, "W007"), (3, "W008"),
(4, "T001"), (4, "T002"), (4, "T003"), (4, "T004"), (4, "T005"), (4, "T006"), (4, "T007"), (4, "T008"),
(4, "C001"), (4, "C002"), (4, "C003"), (4, "C004"), (4, "C005"), (4, "C006"), (4, "C007"), (4, "C008"),
(4, "D001"), (4, "D002"), (4, "D003"), (4, "D004"), (4, "D005"), (4, "D006"), (4, "D007"), (4, "D008"),
(4, "DE01"), (4, "DE02"), (4, "DE03"), (4, "DE04"), (4, "DE05"), (4, "DE06"), (4, "DE07"), (4, "DE08"),
(4, "P001"), (4, "P002"), (4, "P003"), (4, "P004"), (4, "P005"), (4, "P006"), (4, "P007"), (4, "P008"),
(4, "F001"), (4, "F002"), (4, "F003"), (4, "F004"), (4, "F005"), (4, "F006"), (4, "F007"), (4, "F008"),
(4, "S001"), (4, "S002"), (4, "S003"), (4, "S004"), (4, "S005"), (4, "S006"), (4, "S007"), (4, "S008"),
(4, "W001"), (4, "W002"), (4, "W003"), (4, "W004"), (4, "W005"), (4, "W006"), (4, "W007"), (4, "W008"),
(5, "T001"), (5, "T002"), (5, "T003"), (5, "T004"), (5, "T005"), (5, "T006"), (5, "T007"), (5, "T008"),
(5, "C001"), (5, "C002"), (5, "C003"), (5, "C004"), (5, "C005"), (5, "C006"), (5, "C007"), (5, "C008"),
(5, "D001"), (5, "D002"), (5, "D003"), (5, "D004"), (5, "D005"), (5, "D006"), (5, "D007"), (5, "D008"),
(5, "DE01"), (5, "DE02"), (5, "DE03"), (5, "DE04"), (5, "DE05"), (5, "DE06"), (5, "DE07"), (5, "DE08"),
(5, "F001"), (5, "F002"), (5, "F003"), (5, "F004"), (5, "F005"), (5, "F006"), (5, "F007"), (5, "F008"),
(5, "S001"), (5, "S002"), (5, "S003"), (5, "S004"), (5, "S005"), (5, "S006"), (5, "S007"), (5, "S008"),
(5, "W001"), (5, "W002"), (5, "W003"), (5, "W004"), (5, "W005"), (5, "W006"), (5, "W007"), (5, "W008"),
(6, "T001"), (6, "T002"), (6, "T003"), (6, "T004"), (6, "T005"), (6, "T006"), (6, "T007"), (6, "T008"),
(6, "C001"), (6, "C002"), (6, "C003"), (6, "C004"), (6, "C005"), (6, "C006"), (6, "C007"), (6, "C008"),
(6, "D001"), (6, "D002"), (6, "D003"), (6, "D004"), (6, "D005"), (6, "D006"), (6, "D007"), (6, "D008"),
(6, "DE01"), (6, "DE02"), (6, "DE03"), (6, "DE04"), (6, "DE05"), (6, "DE06"), (6, "DE07"), (6, "DE08"),
(6, "P001"), (6, "P002"), (6, "P003"), (6, "P004"), (6, "P005"), (6, "P006"), (6, "P007"), (6, "P008"),
(6, "S001"), (6, "S002"), (6, "S003"), (6, "S004"), (6, "S005"), (6, "S006"), (6, "S007"), (6, "S008"),
(6, "W001"), (6, "W002"), (6, "W003"), (6, "W004"), (6, "W005"), (6, "W006"), (6, "W007"), (6, "W008"),
(7, "T001"), (7, "T002"), (7, "T003"), (7, "T004"), (7, "T005"), (7, "T006"), (7, "T007"), (7, "T008"),
(7, "C001"), (7, "C002"), (7, "C003"), (7, "C004"), (7, "C005"), (7, "C006"), (7, "C007"), (7, "C008"),
(7, "D001"), (7, "D002"), (7, "D003"), (7, "D004"), (7, "D005"), (7, "D006"), (7, "D007"), (7, "D008"),
(7, "DE01"), (7, "DE02"), (7, "DE03"), (7, "DE04"), (7, "DE05"), (7, "DE06"), (7, "DE07"), (7, "DE08"),
(7, "P001"), (7, "P002"), (7, "P003"), (7, "P004"), (7, "P005"), (7, "P006"), (7, "P007"), (7, "P008"),
(7, "F001"), (7, "F002"), (7, "F003"), (7, "F004"), (7, "F005"), (7, "F006"), (7, "F007"), (7, "F008"),
(7, "S001"), (7, "S002"), (7, "S003"), (7, "S004"), (7, "S005"), (7, "S006"), (7, "S007"), (7, "S008"),
(7, "W001"), (7, "W002"), (7, "W003"), (7, "W004"), (7, "W005"), (7, "W006"), (7, "W007"), (7, "W008"),
(8, "T001"), (8, "T002"), (8, "T003"), (8, "T004"), (8, "T005"), (8, "T006"), (8, "T007"), (8, "T008"),
(8, "C001"), (8, "C002"), (8, "C003"), (8, "C004"), (8, "C005"), (8, "C006"), (8, "C007"), (8, "C008"),
(8, "D001"), (8, "D002"), (8, "D003"), (8, "D004"), (8, "D005"), (8, "D006"), (8, "D007"), (8, "D008"),
(8, "DE01"), (8, "DE02"), (8, "DE03"), (8, "DE04"), (8, "DE05"), (8, "DE06"), (8, "DE07"), (8, "DE08"),
(8, "P001"), (8, "P002"), (8, "P003"), (8, "P004"), (8, "P005"), (8, "P006"), (8, "P007"), (8, "P008"),
(8, "F001"), (8, "F002"), (8, "F003"), (8, "F004"), (8, "F005"), (8, "F006"), (8, "F007"), (8, "F008"),
(8, "S001"), (8, "S002"), (8, "S003"), (8, "S004"), (8, "S005"), (8, "S006"), (8, "S007"), (8, "S008"),
(8, "W001"), (8, "W002"), (8, "W003"), (8, "W004"), (8, "W005"), (8, "W006"), (8, "W007"), (8, "W008"),
(9, "T001"), (9, "T002"), (9, "T003"), (9, "T004"), (9, "T005"), (9, "T006"), (9, "T007"), (9, "T008"),
(9, "C001"), (9, "C002"), (9, "C003"), (9, "C004"), (9, "C005"), (9, "C006"), (9, "C007"), (9, "C008"),
(9, "D001"), (9, "D002"), (9, "D003"), (9, "D004"), (9, "D005"), (9, "D006"), (9, "D007"), (9, "D008"),
(9, "DE01"), (9, "DE02"), (9, "DE03"), (9, "DE04"), (9, "DE05"), (9, "DE06"), (9, "DE07"), (9, "DE08"),
(9, "P001"), (9, "P002"), (9, "P003"), (9, "P004"), (9, "P005"), (9, "P006"), (9, "P007"), (9, "P008"),
(9, "F001"), (9, "F002"), (9, "F003"), (9, "F004"), (9, "F005"), (9, "F006"), (9, "F007"), (9, "F008"),
(9, "S001"), (9, "S002"), (9, "S003"), (9, "S004"), (9, "S005"), (9, "S006"), (9, "S007"), (9, "S008"),
(9, "W001"), (9, "W002"), (9, "W003"), (9, "W004"), (9, "W005"), (9, "W006"), (9, "W007"), (9, "W008"),
(10, "T001"), (10, "T002"), (10, "T003"), (10, "T004"), (10, "T005"), (10, "T006"), (10, "T007"), (10, "T008"),
(10, "C001"), (10, "C002"), (10, "C003"), (10, "C004"), (10, "C005"), (10, "C006"), (10, "C007"), (10, "C008"),
(10, "D001"), (10, "D002"), (10, "D003"), (10, "D004"), (10, "D005"), (10, "D006"), (10, "D007"), (10, "D008"),
(10, "DE01"), (10, "DE02"), (10, "DE03"), (10, "DE04"), (10, "DE05"), (10, "DE06"), (10, "DE07"), (10, "DE08"),
(10, "P001"), (10, "P002"), (10, "P003"), (10, "P004"), (10, "P005"), (10, "P006"), (10, "P007"), (10, "P008"),
(10, "F001"), (10, "F002"), (10, "F003"), (10, "F004"), (10, "F005"), (10, "F006"), (10, "F007"), (10, "F008"),
(10, "S001"), (10, "S002"), (10, "S003"), (10, "S004"), (10, "S005"), (10, "S006"), (10, "S007"), (10, "S008"),
(10, "W001"), (10, "W002"), (10, "W003"), (10, "W004"), (10, "W005"), (10, "W006"), (10, "W007"), (10, "W008"),
(11, "T001"), (11, "T002"), (11, "T003"), (11, "T004"), (11, "T005"), (11, "T006"), (11, "T007"), (11, "T008"),
(11, "C001"), (11, "C002"), (11, "C003"), (11, "C004"), (11, "C005"), (11, "C006"), (11, "C007"), (11, "C008"),
(11, "D001"), (11, "D002"), (11, "D003"), (11, "D004"), (11, "D005"), (11, "D006"), (11, "D007"), (11, "D008"),
(11, "DE01"), (11, "DE02"), (11, "DE03"), (11, "DE04"), (11, "DE05"), (11, "DE06"), (11, "DE07"), (11, "DE08"),
(11, "P001"), (11, "P002"), (11, "P003"), (11, "P004"), (11, "P005"), (11, "P006"), (11, "P007"), (11, "P008"),
(11, "F001"), (11, "F002"), (11, "F003"), (11, "F004"), (11, "F005"), (11, "F006"), (11, "F007"), (11, "F008"),
(11, "S001"), (11, "S002"), (11, "S003"), (11, "S004"), (11, "S005"), (11, "S006"), (11, "S007"), (11, "S008"),
(11, "W001"), (11, "W002"), (11, "W003"), (11, "W004"), (11, "W005"), (11, "W006"), (11, "W007"), (11, "W008"),
(12, "T001"), (12, "T002"), (12, "T003"), (12, "T004"), (12, "T005"), (12, "T006"), (12, "T007"), (12, "T008"),
(12, "C001"), (12, "C002"), (12, "C003"), (12, "C004"), (12, "C005"), (12, "C006"), (12, "C007"), (12, "C008"),
(12, "D001"), (12, "D002"), (12, "D003"), (12, "D004"), (12, "D005"), (12, "D006"), (12, "D007"), (12, "D008"),
(12, "DE01"), (12, "DE02"), (12, "DE03"), (12, "DE04"), (12, "DE05"), (12, "DE06"), (12, "DE07"), (12, "DE08"),
(12, "P001"), (12, "P002"), (12, "P003"), (12, "P004"), (12, "P005"), (12, "P006"), (12, "P007"), (12, "P008"),
(12, "F001"), (12, "F002"), (12, "F003"), (12, "F004"), (12, "F005"), (12, "F006"), (12, "F007"), (12, "F008"),
(12, "S001"), (12, "S002"), (12, "S003"), (12, "S004"), (12, "S005"), (12, "S006"), (12, "S007"), (12, "S008"),
(12, "W001"), (12, "W002"), (12, "W003"), (12, "W004"), (12, "W005"), (12, "W006"), (12, "W007"), (12, "W008"),
(13, "T001"), (13, "T002"), (13, "T003"), (13, "T004"), (13, "T005"), (13, "T006"), (13, "T007"), (13, "T008"),
(13, "C001"), (13, "C002"), (13, "C003"), (13, "C004"), (13, "C005"), (13, "C006"), (13, "C007"), (13, "C008"),
(13, "D001"), (13, "D002"), (13, "D003"), (13, "D004"), (13, "D005"), (13, "D006"), (13, "D007"), (13, "D008"),
(13, "DE01"), (13, "DE02"), (13, "DE03"), (13, "DE04"), (13, "DE05"), (13, "DE06"), (13, "DE07"), (13, "DE08"),
(13, "P001"), (13, "P002"), (13, "P003"), (13, "P004"), (13, "P005"), (13, "P006"), (13, "P007"), (13, "P008"),
(13, "F001"), (13, "F002"), (13, "F003"), (13, "F004"), (13, "F005"), (13, "F006"), (13, "F007"), (13, "F008"),
(13, "S001"), (13, "S002"), (13, "S003"), (13, "S004"), (13, "S005"), (13, "S006"), (13, "S007"), (13, "S008"),
(13, "W001"), (13, "W002"), (13, "W003"), (13, "W004"), (13, "W005"), (13, "W006"), (13, "W007"), (13, "W008"),
(14, "T001"), (14, "T002"), (14, "T003"), (14, "T004"), (14, "T005"), (14, "T006"), (14, "T007"), (14, "T008"),
(14, "C001"), (14, "C002"), (14, "C003"), (14, "C004"), (14, "C005"), (14, "C006"), (14, "C007"), (14, "C008"),
(14, "D001"), (14, "D002"), (14, "D003"), (14, "D004"), (14, "D005"), (14, "D006"), (14, "D007"), (14, "D008"),
(14, "DE01"), (14, "DE02"), (14, "DE03"), (14, "DE04"), (14, "DE05"), (14, "DE06"), (14, "DE07"), (14, "DE08"),
(14, "P001"), (14, "P002"), (14, "P003"), (14, "P004"), (14, "P005"), (14, "P006"), (14, "P007"), (14, "P008"),
(14, "F001"), (14, "F002"), (14, "F003"), (14, "F004"), (14, "F005"), (14, "F006"), (14, "F007"), (14, "F008"),
(14, "S001"), (14, "S002"), (14, "S003"), (14, "S004"), (14, "S005"), (14, "S006"), (14, "S007"), (14, "S008"),
(14, "W001"), (14, "W002"), (14, "W003"), (14, "W004"), (14, "W005"), (14, "W006"), (14, "W007"), (14, "W008"),
(15, "T001"), (15, "T002"), (15, "T003"), (15, "T004"), (15, "T005"), (15, "T006"), (15, "T007"), (15, "T008"),
(15, "C001"), (15, "C002"), (15, "C003"), (15, "C004"), (15, "C005"), (15, "C006"), (15, "C007"), (15, "C008"),
(15, "D001"), (15, "D002"), (15, "D003"), (15, "D004"), (15, "D005"), (15, "D006"), (15, "D007"), (15, "D008"),
(15, "DE01"), (15, "DE02"), (15, "DE03"), (15, "DE04"), (15, "DE05"), (15, "DE06"), (15, "DE07"), (15, "DE08"),
(15, "P001"), (15, "P002"), (15, "P003"), (15, "P004"), (15, "P005"), (15, "P006"), (15, "P007"), (15, "P008"),
(15, "F001"), (15, "F002"), (15, "F003"), (15, "F004"), (15, "F005"), (15, "F006"), (15, "F007"), (15, "F008"),
(15, "S001"), (15, "S002"), (15, "S003"), (15, "S004"), (15, "S005"), (15, "S006"), (15, "S007"), (15, "S008"),
(15, "W001"), (15, "W002"), (15, "W003"), (15, "W004"), (15, "W005"), (15, "W006"), (15, "W007"), (15, "W008");













package com.example.ranking.domain.dto.animal;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@Getter @ToString
public class Dog extends AnimalType {
    private final String animalId = "DOG03";
}

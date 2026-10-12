package com.example.characterapi;

import org.springframework.data.jpa.repository.JpaRepository;

public interface CowboyBebopCharacterRepo
        extends JpaRepository<CowboyBebopCharacter, Long> {
}
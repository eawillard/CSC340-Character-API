package com.example.characterapi;

import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface CowboyBebopCharacterRepo
        extends JpaRepository<CowboyBebopCharacter, Long> {
    List<CowboyBebopCharacter> findByNameContainingIgnoreCase(String name);
    List<CowboyBebopCharacter> findByOriginPlanetIgnoreCase(String originPlanet);
}
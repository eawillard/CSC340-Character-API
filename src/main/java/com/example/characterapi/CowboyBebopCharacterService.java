package com.example.characterapi;
import org.springframework.http.HttpStatus;
import org.springframework.web.server.ResponseStatusException;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CowboyBebopCharacterService {

    private final CowboyBebopCharacterRepo characterRepository;

    public CowboyBebopCharacterService(
            CowboyBebopCharacterRepo characterRepository) {
        this.characterRepository = characterRepository;
    }
    public List<CowboyBebopCharacter> getAllCharacters() {
    return characterRepository.findAll();
}

public Optional<CowboyBebopCharacter> getCharacterById(Long id) {
    return characterRepository.findById(id);
}

public CowboyBebopCharacter saveCharacter(CowboyBebopCharacter character) {
    return characterRepository.save(character);
}

public void deleteCharacter(Long id) {
    if (!characterRepository.existsById(id)) {
        throw new ResponseStatusException(
                HttpStatus.NOT_FOUND, "Character not found: " + id);
    }

    characterRepository.deleteById(id);
}

public List<CowboyBebopCharacter> searchByName(String name) {
    return characterRepository.findByNameContainingIgnoreCase(name);
}

public List<CowboyBebopCharacter> filterByOriginPlanet(String originPlanet) {
    return characterRepository.findByOriginPlanetIgnoreCase(originPlanet);
}
}
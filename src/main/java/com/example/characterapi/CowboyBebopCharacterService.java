package com.example.characterapi;

import org.springframework.stereotype.Service;
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
    characterRepository.deleteById(id);
}
}
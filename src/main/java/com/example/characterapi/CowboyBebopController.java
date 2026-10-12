package com.example.characterapi;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api/characters")
public class CowboyBebopController {

    private final CowboyBebopCharacterService characterService;

    public CowboyBebopController(
            CowboyBebopCharacterService characterService) {
        this.characterService = characterService;
    }

    @GetMapping
    public List<CowboyBebopCharacter> getAllCharacters() {
        return characterService.getAllCharacters();
    }

    @GetMapping("/{id}")
    public CowboyBebopCharacter getCharacterById(
            @PathVariable Long id) {
        return characterService.getCharacterById(id)
                .orElseThrow(() ->
                        new RuntimeException("Character not found: " + id));
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public CowboyBebopCharacter createCharacter(
            @RequestBody CowboyBebopCharacter character) {
        return characterService.saveCharacter(character);
    }

    @PutMapping("/{id}")
    public CowboyBebopCharacter updateCharacter(
            @PathVariable Long id,
            @RequestBody CowboyBebopCharacter character) {

        character.setCharacterId(id);
        return characterService.saveCharacter(character);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteCharacter(@PathVariable Long id) {
        characterService.deleteCharacter(id);
    }
}
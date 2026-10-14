package com.example.characterapi;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import jakarta.validation.Valid;
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
public List<CowboyBebopCharacter> getAllCharacters(
        @RequestParam(required = false) String name,
        @RequestParam(required = false) String originPlanet) {

    if (name != null && !name.isBlank()) {
        return characterService.searchByName(name);
    }

    if (originPlanet != null && !originPlanet.isBlank()) {
        return characterService.filterByOriginPlanet(originPlanet);
    }

    return characterService.getAllCharacters();
}
@GetMapping("/{id}")
public CowboyBebopCharacter getCharacterById(@PathVariable Long id) {
    return characterService.getCharacterById(id)
            .orElseThrow(() -> new ResponseStatusException(
                    HttpStatus.NOT_FOUND, "Character not found: " + id));
}

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public CowboyBebopCharacter createCharacter(
        @Valid
        @RequestBody CowboyBebopCharacter character) {
        return characterService.saveCharacter(character);
    }

    @PutMapping("/{id}")
    public CowboyBebopCharacter updateCharacter(
            @PathVariable Long id,
            @Valid
            @RequestBody CowboyBebopCharacter character) {

        characterService.getCharacterById(id)
        .orElseThrow(() -> new ResponseStatusException(
                HttpStatus.NOT_FOUND, "Character not found: " + id));
        character.setCharacterId(id);        
        return characterService.saveCharacter(character);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteCharacter(@PathVariable Long id) {
        characterService.deleteCharacter(id);
    }
}
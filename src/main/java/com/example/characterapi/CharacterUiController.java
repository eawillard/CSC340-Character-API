package com.example.characterapi;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller 
 @RequestMapping("/characters")
public class CharacterUiController {
    
    private final CowboyBebopCharacterService characterService;

    public CharacterUiController(CowboyBebopCharacterService characterService) {
        this.characterService = characterService;
    }
    @GetMapping("/about")
    public String about() {
        return "about";
    }

    @GetMapping("/{id}")
    public String details(@PathVariable long id, Model model) {
        CowboyBebopCharacter character = characterService.getCharacterById(id)
           model.addAttribute("character", character);
        
        return "details";
    }
   


}

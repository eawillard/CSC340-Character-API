package com.example.characterapi;
import java.util.List;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import jakarta.validation.Valid;

@Controller 
 @RequestMapping("/characters")
public class CharacterUiController {
    
    private final CowboyBebopCharacterService characterService;

    public CharacterUiController(CowboyBebopCharacterService characterService) {
        this.characterService = characterService;
    }

    
    // HOME / GALLERY
    @GetMapping({"", "/"})
    public String home(
            Model model,
            @RequestParam(required = false) String name,
            @RequestParam(required = false) String originPlanet) {

        List<CowboyBebopCharacter> characters =
                characterService.getAllCharacters();

        if (name != null && !name.isBlank()) {
            characters = characters.stream()
                    .filter(c -> c.getName() != null &&
                            c.getName().toLowerCase()
                                    .contains(name.toLowerCase()))
                    .toList();
        }

        if (originPlanet != null && !originPlanet.isBlank()) {
            characters = characters.stream()
                    .filter(c -> c.getOriginPlanet() != null &&
                            c.getOriginPlanet()
                                    .equalsIgnoreCase(originPlanet))
                    .toList();
        }

        model.addAttribute("characters", characters);
        model.addAttribute("name", name);
        model.addAttribute("originPlanet", originPlanet);

        return "index";
    }

    // ABOUT
    @GetMapping("/about")
    public String about() {
        return "about";
    }

    // CHARACTER DETAILS
    @GetMapping("/{id}")
    public String details(
            @PathVariable Long id,
            Model model,
            @org.springframework.web.bind.annotation.RequestParam(
                    required = false) String successMessage) {

        CowboyBebopCharacter character = characterService
                .getCharacterById(id)
                .orElse(null);

        if (character == null) {
            return "error";
        }

        model.addAttribute("character", character);

        return "details";
    }

   // SHOW ADD FORM
    @GetMapping("/new")
    public String showAddForm(Model model) {

        model.addAttribute("character",
                new CowboyBebopCharacter());

        model.addAttribute("formAction", "/characters");
        model.addAttribute("formTitle", "Add a New Character");

        return "new-character-form";
    }

     // SAVE NEW CHARACTER
    @PostMapping
    public String addCharacter(
            @Valid @ModelAttribute("character")
            CowboyBebopCharacter character,
            BindingResult result,
            Model model,
            RedirectAttributes redirectAttributes) {

        if (result.hasErrors()) {

            model.addAttribute("formAction", "/characters");
            model.addAttribute("formTitle", "Add a New Character");

            return "new-character-form";
        }

        character.setCharacterId(null);

        characterService.saveCharacter(character);

        redirectAttributes.addFlashAttribute(
                "successMessage",
                character.getName() + " was added!");

        return "redirect:/characters";
    }

 // SHOW EDIT FORM
    @GetMapping("/{id}/edit")
    public String showEditForm(
            @PathVariable Long id,
            Model model,
            HttpServletResponse response) {

        CowboyBebopCharacter character = characterService
                .getCharacterById(id)
                .orElse(null);

        if (character == null) {
            response.setStatus(HttpServletResponse.SC_NOT_FOUND);
            return "error";
        }

        model.addAttribute("character", character);
        model.addAttribute(
                "formAction", "/characters/" + id + "/edit");
        model.addAttribute("formTitle", "Edit Character");

        return "new-character-form";
    }

   // UPDATE EXISTING CHARACTER
    @PostMapping("/{id}/edit")
    public String updateCharacter(
            @PathVariable Long id,
            @Valid @ModelAttribute("character")
            CowboyBebopCharacter character,
            BindingResult result,
            Model model,
            RedirectAttributes redirectAttributes,
            HttpServletResponse response) {

        CowboyBebopCharacter existingCharacter = characterService
                .getCharacterById(id)
                .orElse(null);

        if (existingCharacter == null) {
            response.setStatus(HttpServletResponse.SC_NOT_FOUND);
            return "error";
        }

        if (result.hasErrors()) {

            character.setCharacterId(id);

            model.addAttribute(
                    "formAction", "/characters/" + id + "/edit");
            model.addAttribute("formTitle", "Edit Character");

            return "new-character-form";
        }

        character.setCharacterId(id);

        characterService.saveCharacter(character);

        redirectAttributes.addFlashAttribute(
                "successMessage",
                character.getName() + " was updated!");

        return "redirect:/characters/" + id;
    }

   // SHOW DELETE CONFIRMATION
    @GetMapping("/{id}/delete")
    public String confirmDelete(
            @PathVariable Long id,
            Model model,
            HttpServletResponse response) {

        CowboyBebopCharacter character = characterService
                .getCharacterById(id)
                .orElse(null);

        if (character == null) {
            response.setStatus(HttpServletResponse.SC_NOT_FOUND);
            return "error";
        }

        model.addAttribute("character", character);

        return "delete-character";
    }

    // DELETE CHARACTER
    @PostMapping("/{id}/delete")
    public String deleteCharacter(
            @PathVariable Long id,
            RedirectAttributes redirectAttributes,
            HttpServletResponse response) {

        CowboyBebopCharacter character = characterService
                .getCharacterById(id)
                .orElse(null);

        if (character == null) {
            response.setStatus(HttpServletResponse.SC_NOT_FOUND);
            return "error";
        }

        String characterName = character.getName();

        characterService.deleteCharacter(id);

        redirectAttributes.addFlashAttribute(
                "successMessage",
                characterName + " was removed!");

        return "redirect:/characters";
    }
}
package com.example.characterapi;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;

@Entity
@Table(name = "characters")
public class CowboyBebopCharacter {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long characterId;

    @NotBlank(message = "Name is required")
    private String name;

    @NotBlank(message = "Description is required")
    private String description;

    private String firstSession;
    private String originPlanet;

    public CowboyBebopCharacter() {
    }

    public CowboyBebopCharacter(String name, String description,
                       String firstSession,
                       String originPlanet) {
        this.name = name;
        this.description = description;
        this.firstSession = firstSession;
        this.originPlanet = originPlanet;
       
    }

    public Long getCharacterId() {
        return characterId;
    }

    public void setCharacterId(Long characterId) {
        this.characterId = characterId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getFirstSession() {
        return firstSession;
    }

    public void setFirstSession(String firstSession) {
        this.firstSession = firstSession;
    }

    public String getOriginPlanet() {
        return originPlanet;
    }

    public void setOriginPlanet(String originPlanet) {
        this.originPlanet = originPlanet;
    }
}


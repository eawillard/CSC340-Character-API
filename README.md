# CSC340-Character-API
Cowboy Bebop Character REST API

A RESTful API built with Spring Boot to manage characters from Cowboy Bebop. Contains the main 5 characters: Spike, Faye, Jet, Edward, and Ein. The API supports creating, retrieving, updating, deleting, searching, and filtering characters. Character data is stored in PostgreSQL using Neon.

Entity: CowboyBebopCharacter
Entity attributes: characterId, name, description, firstSession, originPlanet.

Database table: characters

Attribute	Type
Rules
characterId: Long Unique ID generated automatically
name:	String	Required; cannot be null or blank
description:	String	Required; cannot be null or blank
firstSession:	String	First episode associated with the character
originPlanet:	String	Character's planet of origin



Method	Path	Description	Success Status
GET	/api/characters	Retrieve all characters	200 OK

GET	/api/characters/{id}	Retrieve a character by ID	200 OK

POST	/api/characters	Create a character	201 Created
PUT	/api/characters/{id}	Update an existing character	200 OK

DELETE	/api/characters/{id}	Delete a character	204 No Content

GET	/api/characters?name=spi	Search names using partial, case-insensitive matching	200 OK

GET	/api/characters?originPlanet=Mars	Filter characters by origin planet	200 OK

POST Example — Create a Character

POST /api/characters

Content-Type: application/json

{
  "name": "Faye Valentine",
  
  "description": "A former wanted bounty head who later became a member of the Bebop crew.",
  
  "firstSession": "Honky Tonk Women",
  
  "originPlanet": "Earth"
}


The characterId is generated automatically. A successful request returns 201 Created and the created character.

PUT Example — Update a Character

PUT /api/characters/1

Content-Type: application/json

{
  "name": "Spike Spiegel",
  
  "description": "An exiled former hitman of the Red Dragon Syndicate who now works as a bounty hunter.",
  
  "firstSession": "Asteroid Blues",
  
  "originPlanet": "Mars"
}


Replace 1 with the ID of the character you want to update. A successful request returns 200 OK.

Search and Filtering

Search by name: GET /api/characters?name=spi

Filter by origin planet: GET /api/characters?originPlanet=Mars

Name searches are partial and case-insensitive. Origin planet filtering is case-insensitive.

If both query parameters are provided, the controller prioritizes the name search. The filters are not combined.

Error Responses
Status	Description
400 Bad Request	The request fails validation, such as when the name or description is missing or blank
404 Not Found	The requested character ID does not exist


Deployed API

Render URL: https://csc340-character-api.onrender.com/api/characters

NOTE: Render free services sleep after roughly 15 minutes of inactivity, so the first request afterward can take up to a minute.
Neon scales idle databases to zero, which adds a short delay on the first query.
Render's file system is ephemeral. All persistent data lives in Neon.

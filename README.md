# CSC340-Character-API
Cowboy Bebop Character API

A full-stack web application built with *ava, Spring Boot, FreeMarker, and PostgreSQL Users can view, search, add, edit, and delete characters from Cowboy Bebop.

The database includes Spike, Faye, Jet, Edward, and Ein.

## Features
- View all characters in a gallery with images and descriptions.
- Search characters by name and filter by planet.
- View individual character details and backstories.
- Add new characters through a form.
- Edit existing character information.
- Delete characters with confirmation.
- Display success messages and friendly error messages.
- Shared navigation across all pages.

## Application Architecture

The application uses Spring Boot MVC and a layered architecture:

- **Controller:** Handles website requests and form submissions.
- **Service:** Contains character-related business logic.
- **Repository:** Communicates with the database.
- **Database:** Neon PostgreSQL stores character information.
- **Front End:** FreeMarker, HTML, and CSS display dynamic character information.

The website uses the service layer to access character data, while the REST API remains available independently.

## Website Pages

| Page | Route | Description |
|---|---|---|
| Home / Gallery | `/characters` | Displays and searches characters |
| Character Details | `/characters/{id}` | Displays character information |
| About | `/about` | Describes the project |
| Add Character | `/characters/new` | Adds a new character |
| Edit Character | `/characters/{id}/edit` | Updates a character |
| Delete Character | `/characters/{id}/delete` | Deletes a character |

## Character Attributes

| Attribute | Type |
|---|---|
| characterId | Long |
| name | String |
| description | String |
| firstSession | String |
| originPlanet | String |
| hobby | String |
| imageUrl | String |

## REST API Endpoints

| Method | Endpoint | Description |
|---|---|---|
| GET | `/api/characters` | Get all characters |
| GET | `/api/characters/{id}` | Get character by ID |
| POST | `/api/characters` | Create character |
| PUT | `/api/characters/{id}` | Update character |
| DELETE | `/api/characters/{id}` | Delete character |
| GET | `/api/characters?name=spi` | Search by name |
| GET | `/api/characters?originPlanet=Mars` | Filter by planet |

## Error Handling

- `400 Bad Request` – Invalid or missing required information.
- `404 Not Found` – Character does not exist.

## Deployment

**Platform:** Render  
**Database:** Neon PostgreSQL
Character data is stored in Neon. Database credentials are kept in environment variables and are not committed to GitHub.


## Deployed API

Render URL: [https://csc340-character-api.onrender.com/api/characters](https://csc340-character-api.onrender.com)

NOTE: Render free services sleep after roughly 15 minutes of inactivity, so the first request afterward can take up to a minute.
Neon scales idle databases to zero, which adds a short delay on the first query.
Render's file system is ephemeral. All persistent data lives in Neon.


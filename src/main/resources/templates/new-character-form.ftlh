<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add a New Character</title>

     <link 
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
    crossorigin="anonymous"
>
     <link rel="stylesheet" href="style.css">
</head>
<body>
    <nav class="navbar">
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="about.html">About</a></li>
            <li><a href="details.html">Details</a></li>
            <li><a href="new-character-form.html">New Character</a></li>
        </ul>
    </nav>

    <main class="form-page">
        <h1>Add a New Character</h1>
        <p>Fill out the form below to add a character.</p>

        <form action="#" method="post">
            <div>
                <label for="name">Character Name</label>
                <input type="text" id="name" name="name" placeholder="Character name" required>
            </div>

            <div>
                <label for="session-appearance">First Appearance</label>
                <input type="text" id="session-appearance" name="session-appearance" placeholder="Episode name" required>
            </div>

            <div>
                <label for="skills">Abilities</label>
                <input type="text" id="skills" name="skills" placeholder="Weapon, skills, etc." required>
            </div>

            <div>
                <label for="image">Image URL</label>
                <input type="url" id="image" name="image" placeholder="Enter a valid image URL" required>
            </div>

            <div>
                <label for="description">Short Description</label>
                <textarea id="description" name="description" rows="6" placeholder="Describe the character..." required></textarea>
            </div>

            <button type="submit" class="button">Add Character</button>
        </form>
    </main>
    </body>
</html>

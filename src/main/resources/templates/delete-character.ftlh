
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Character | Cowboy Bebop</title>

    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet"
        crossorigin="anonymous"
    >

    <link rel="stylesheet" href="/style.css">
</head>

<body>

    <nav class="navbar">
        <ul>
            <li><a href="/characters">Home</a></li>
            <li><a href="/characters/about">About</a></li>
            <li><a href="/characters/new">Add a Character</a></li>
        </ul>
    </nav>

    <main class="about-page">

        <section class="about-content">

            <h1>Delete Character</h1>

            <h2>Are you sure?</h2>

            <p>
                You are about to permanently remove
                <strong>${character.name}</strong>
                from your character gallery.
            </p>

            <#if character.imageUrl?? && character.imageUrl?has_content>
                <img
                    src="${character.imageUrl}"
                    alt="${character.name}"
                    style="max-width: 250px; height: auto;"
                >
            </#if>

            <p>
                This action cannot be undone.
            </p>

            <form action="/characters/${character.characterId}/delete"
                  method="post">

                <button type="submit" class="details-button">
                    Yes, Delete Character
                </button>

                <a href="/characters/${character.characterId}"
                   class="details-button">
                    Cancel
                </a>

            </form>

        </section>

    </main>

</body>
</html>

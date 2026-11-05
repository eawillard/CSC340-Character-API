
<!DOCTYPE html>
<#import "shared/layout.ftlh" as layout>

<@layout.layout>

    

</@layout.layout>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${character.name} | Cowboy Bebop Character Gallery</title>

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

    <main class="details-page">

        
<section class="details-image">

    <#if character.imageUrl?? && character.imageUrl?has_content>
        <#assign imageSrc = character.imageUrl>
        <#assign imageAlt = character.name>
    <#else>
        <#assign imageSrc = "/images/placeholder.png">
        <#assign imageAlt = "No image available">
    </#if>

    <img src="${imageSrc}" alt="${imageAlt}">

</section>


        <section class="details-content">

            <h1>${character.name}</h1>

            <#if successMessage??>
                <div class="alert alert-success">
                    ${successMessage}
                </div>
            </#if>

            <h2>Character Information</h2>

            <ul>
                <li>
                    <strong>Planet of Origin:</strong>
                    ${character.originPlanet!'Unknown'}
                </li>

                <li>
                    <strong>First Appearance:</strong>
                    ${character.firstSession!'Unknown'}
                </li>
            </ul>

            <h2>Backstory</h2>

            <p>${character.description}</p>

            <div class="character-actions">

                <a href="/characters"
                   class="details-button">
                    Back to Gallery
                </a>

                <a href="/characters/${character.characterId}/edit"
                   class="details-button">
                    Edit Character
                </a>

                <a href="/characters/${character.characterId}/delete"
                   class="details-button">
                    Delete Character
                </a>

            </div>

        </section>

    </main>

    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
    </script>

</body>
</html>
</@layout.layout>

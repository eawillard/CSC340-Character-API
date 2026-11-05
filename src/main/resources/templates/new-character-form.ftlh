
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Character Form | Cowboy Bebop</title>

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

            <h1>
                <#if character.characterId??>
                    Edit Character
                <#else>
                    Add a New Character
                </#if>
            </h1>

            <#if errors??>
                <div class="alert alert-danger">
                    <ul>
                        <#list errors as error>
                            <li>${error}</li>
                        </#list>
                    </ul>
                </div>
            </#if>

            <form
                action="<#if character.characterId??>/characters/${character.characterId}/edit<#else>/characters</#if>"
                method="post">

                <div class="mb-3">
                    <label for="name">Character Name</label>

                    <input
                        type="text"
                        id="name"
                        name="name"
                        class="form-control"
                        value="${(character.name)!''}"
                        required
                    >
                </div>

                <div class="mb-3">
                    <label for="description">Description / Backstory</label>

                    <textarea
                        id="description"
                        name="description"
                        class="form-control"
                        rows="5"
                        required
                    >${(character.description)!''}</textarea>
                </div>

                <div class="mb-3">
                    <label for="firstSession">First Appearance</label>

                    <input
                        type="text"
                        id="firstSession"
                        name="firstSession"
                        class="form-control"
                        value="${(character.firstSession)!''}"
                    >
                </div>

                <div class="mb-3">
                    <label for="originPlanet">Planet of Origin</label>

                    <input
                        type="text"
                        id="originPlanet"
                        name="originPlanet"
                        class="form-control"
                        value="${(character.originPlanet)!''}"
                    >
                </div>

                <div class="mb-3">
                    <label for="imageUrl">Character Image URL</label>

                    <input
                        type="text"
                        id="imageUrl"
                        name="imageUrl"
                        class="form-control"
                        value="${(character.imageUrl)!''}"
                        placeholder="/images/Spike_spiegel.png"
                    >
                </div>

                <button type="submit" class="details-button">

                    <#if character.characterId??>
                        Save Changes
                    <#else>
                        Add Character
                    </#if>

                </button>

                <a href="/characters" class="details-button">
                    Cancel
                </a>

            </form>

        </section>

    </main>

</body>
</html>

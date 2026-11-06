
<#import "shared/layout.ftlh" as layout>

<@layout.layout>

<header class="header">
    <p class="eyebrow">SEE YOU SPACE COWBOY...</p>
    <h1>Cowboy Bebop Character Gallery</h1>
</header>

<main class="container">

    <#if successMessage??>
        <div class="alert alert-success">
            ${successMessage}
        </div>
    </#if>

    <section class="search-section">

        <h2>Find a Character</h2>

        <form class="search-bar"
              action="/characters"
              method="get">

            <input
                type="text"
                name="name"
                placeholder="Search by character name..."
                value="${name!''}">

            <input
                type="text"
                name="originPlanet"
                placeholder="Filter by planet..."
                value="${originPlanet!''}">

            <button type="submit" class="details-button">
                Search
            </button>

            <a href="/characters" class="details-button">
                Clear
            </a>

        </form>

    </section>

    <section class="gallery">

        <#if characters?has_content>

            <#list characters as character>

                <#assign imageUrl = "/images/placeholder.png">
                <#if character.imageUrl?? && character.imageUrl?has_content>
                    <#assign imageUrl = character.imageUrl>
                </#if>

                <article class="character-card">

                    <img
                        src="${imageUrl}"
                        alt="${character.name}"
                        onerror="this.onerror=null;this.src='/images/placeholder.png';">

                    <div class="character-info">

                        <h3>${character.name}</h3>

                        <p>${character.description!''}</p>

                        <p>
                            <strong>Origin:</strong>
                            ${character.originPlanet!'Unknown'}
                        </p>

                        <p>
                            <strong>First Appearance:</strong>
                            ${character.firstSession!'Unknown'}
                        </p>

                        <a
                            href="/characters/${character.characterId}"
                            class="details-button">

                            View Details

                        </a>

                    </div>

                </article>

            </#list>

        <#else>

            <div class="no-results">

                <h2>No characters found</h2>

                <p>
                    We couldn't find any characters matching
                    your search. Try another name or planet.
                </p>

                <a href="/characters" class="details-button">
                    View All Characters
                </a>

            </div>

        </#if>

    </section>

</main>

</@layout.layout>

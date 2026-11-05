
<#import "layout.ftlh" as layout>

<@layout.layout>

    <header class="header">
        <h1>Cowboy Bebop Character Gallery</h1>
    </header>

    <main>

        <#if successMessage??>
            <div class="alert alert-success">
                ${successMessage}
            </div>
        </#if>

        <section class="search-section">

            <h2>Find a Character</h2>

            <form class="search-bar" action="/characters" method="get">

                <input
                    type="text"
                    name="name"
                    placeholder="Enter character name..."
                    value="${name!''}"
                >

                <input
                    type="text"
                    name="originPlanet"
                    placeholder="Filter by planet..."
                    value="${originPlanet!''}"
                >

                <button type="submit">Search</button>

                <a href="/characters" class="details-button">
                    Clear
                </a>

            </form>

        </section>

        <section class="gallery">

            <#if characters?has_content>

                <#list characters as character>

                    <div class="character-card">

                        <#if character.imageUrl?? && character.imageUrl?has_content>

                            <img
                                src="${character.imageUrl}"
                                alt="${character.name}"
                            >

                        <#else>

                            <img
                                src="/images/cb_logo.png"
                                alt="No character image available"
                            >

                        </#if>

                        <div class="character-info">

                            <h3>${character.name}</h3>

                            <p>${character.description!''}</p>

                            <p>
                                <strong>Planet of Origin:</strong>
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

                    </div>

                </#list>

            <#else>

                <div class="no-results">

                    <h2>No characters found</h2>

                    <p>Try another name or planet.</p>

                    <a href="/characters" class="details-button">
                        View All Characters
                    </a>

                </div>

            </#if>

        </section>

    </main>

</@layout.layout>

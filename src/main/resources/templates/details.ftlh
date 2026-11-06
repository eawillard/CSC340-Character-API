
<#import "shared/layout.ftlh" as layout>

<@layout.layout>

<main class="details-page">

    <#if successMessage??>
        <div class="alert alert-success details-message">
            ${successMessage}
        </div>
    </#if>

    <section class="details-image">
        <#if character.imageUrl?? && character.imageUrl?has_content>
            <img
                src="${character.imageUrl}"
                alt="${character.name}"
                class="<#if character.name == 'Edward'>edward-image</#if>"
                onerror="this.onerror=null;this.src='/images/placeholder.png';">
        <#else>
            <img
                src="/images/placeholder.png"
                alt="No character image available">
        </#if>
    </section>

    <section class="details-content">
        <p class="eyebrow">CHARACTER FILE</p>

        <h1>${character.name}</h1>

        <h2>Character Information</h2>

        <ul class="character-attributes">
            <li>
                <strong>Character ID:</strong>
                ${character.characterId}
            </li>
            <li>
                <strong>Planet of Origin:</strong>
                ${character.originPlanet!'Unknown'}
            </li>
            <li>
                <strong>First Appearance:</strong>
                ${character.firstSession!'Unknown'}
            </li>
            <li>
                <strong>Hobby:</strong>
                ${character.hobby!'Unknown'}
            </li>
        </ul>

        <h2>Backstory and Description</h2>

        <p>${character.description}</p>

        <div class="character-actions">
            <a href="/characters" class="details-button">
                Back to Gallery
            </a>

            <a href="/characters/${character.characterId}/edit" class="details-button">
                Edit Character
            </a>

            <a href="/characters/${character.characterId}/delete" class="details-button delete-button">
                Delete Character
            </a>
        </div>
    </section>

</main>

</@layout.layout>

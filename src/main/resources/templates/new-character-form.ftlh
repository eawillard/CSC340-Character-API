
<#import "shared/layout.ftlh" as layout>

<@layout.layout>

<main class="form-page">

    <section class="form-container">

        <p class="eyebrow">CHARACTER DATABASE</p>

        <h1>${formTitle}</h1>

        <p>
            Enter the character information below.
            All fields are available for editing.
        </p>

        <#if errors?? && errors?has_content>

            <div class="alert alert-danger">
                <strong>Please correct the following:</strong>

                <ul>
                    <#list errors as error>
                        <li>${error}</li>
                    </#list>
                </ul>
            </div>

        </#if>

        <form action="${formAction}" method="post">

            <div class="mb-3">

                <label for="name">Character Name *</label>

                <input
                    type="text"
                    id="name"
                    name="name"
                    class="form-control"
                    value="${(character.name)!''}"
                    maxlength="100"
                    required>

            </div>

            <div class="mb-3">

                <label for="description">
                    Description / Backstory *
                </label>

                <textarea
                    id="description"
                    name="description"
                    class="form-control"
                    rows="6"
                    maxlength="5000"
                    required>${(character.description)!''}</textarea>

            </div>

            <div class="mb-3">

                <label for="firstSession">
                    First Appearance
                </label>

                <input
                    type="text"
                    id="firstSession"
                    name="firstSession"
                    class="form-control"
                    value="${(character.firstSession)!''}">

            </div>

            <div class="mb-3">

                <label for="originPlanet">
                    Planet of Origin
                </label>

                <input
                    type="text"
                    id="originPlanet"
                    name="originPlanet"
                    class="form-control"
                    value="${(character.originPlanet)!''}">

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

                <label for="hobby">Hobby</label>

                <input
                    type="text"
                    id="hobby"
                    name="hobby"
                    class="form-control"
                    value="${(character.hobby)!''}"
                >

            </div>

            <div class="mb-3">

                <label for="imageUrl">
                    Character Image URL
                </label>

                <input
                    type="url"
                    id="imageUrl"
                    name="imageUrl"
                    class="form-control"
                    value="${(character.imageUrl)!''}"
                    placeholder="https://example.com/image.jpg">

            </div>

            <p class="form-note">* Required fields</p>

            <div class="form-actions">

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

            </div>

        </form>

    </section>

</main>

</@layout.layout>

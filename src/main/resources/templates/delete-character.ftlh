
<#import "shared/layout.ftlh" as layout>

<@layout.layout>

<main class="form-page">

    <section class="form-container delete-container">

        <p class="eyebrow">CONFIRM ACTION</p>

        <h1>Delete Character</h1>

        <h2>Are you sure?</h2>

        <p>
            You are about to permanently remove
            <strong>${character.name}</strong>
            from your character gallery.
        </p>

        <#if character.imageUrl?? &&
             character.imageUrl?has_content>

            <img
                src="${character.imageUrl}"
                alt="${character.name}"
                class="delete-image"
                onerror="this.onerror=null;this.src='/images/placeholder.png';">

        <#else>

            <img
                src="/images/placeholder.png"
                alt="Character image unavailable"
                class="delete-image">

        </#if>

        <p>This action cannot be undone.</p>

        <form
            action="/characters/${character.characterId}/delete"
            method="post"
            onsubmit="return confirm('Are you sure you want to permanently delete this character?');">

            <div class="form-actions">

                <button type="submit"
                        class="details-button delete-button">

                    Yes, Delete Character

                </button>

                <a
                    href="/characters/${character.characterId}"
                    class="details-button">

                    Cancel

                </a>

            </div>

        </form>

    </section>

</main>

</@layout.layout>

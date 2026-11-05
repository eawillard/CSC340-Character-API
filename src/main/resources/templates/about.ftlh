
<#import "shared/layout.ftlh" as layout>

<@layout.layout>

<main class="about-page">

    <img
        src="/images/cb_logo.png"
        alt="Cowboy Bebop logo"
        class="about-image">

    <section class="about-content">

        <p class="eyebrow">SEE YOU SPACE COWBOY</p>

        <h1>About Character Gallery</h1>

        <p>
            Welcome to the Cowboy Bebop Character Gallery!
            This website showcases characters from the
            Cowboy Bebop universe. Visitors can explore
            character artwork, learn about their backgrounds,
            and discover the planets and places connected
            to their stories.
        </p>

        <p>
            The design takes inspiration from the futuristic
            space setting and vintage jazz atmosphere of the
            series. The colors, imagery, and overall layout
            reflect the personality of Cowboy Bebop.
        </p>

        <h2>About Cowboy Bebop</h2>

        <p>
            Set in the year 2071, Cowboy Bebop follows a
            group of bounty hunters traveling through space
            aboard the spaceship Bebop. The series combines
            science fiction, action, comedy, and jazz-inspired
            storytelling.
        </p>

        <h2>How This Application Works</h2>

        <p>
            This application was developed using Java,
            Spring Boot MVC, FreeMarker, and PostgreSQL.
            It builds upon an earlier static character
            gallery by connecting the website to a
            working database.
        </p>

        <p>
            The application uses a layered architecture.
            The MVC controller receives requests from
            users and communicates with the service layer.
            The service layer manages character operations,
            while the repository communicates with the
            PostgreSQL database hosted through Neon using
            Spring Data JPA.
        </p>

        <p>
            FreeMarker templates take the character
            information retrieved from the database
            and dynamically display it on the website.
            This allows users to search, view, add,
            edit, and delete character records.
        </p>

        <p>
            The application also maintains a separate
            REST API. The API provides JSON endpoints
            that allow character data to be retrieved
            and modified through HTTP requests.
        </p>

    </section>

</main>

</@layout.layout>

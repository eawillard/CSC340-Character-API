<#import "layout.ftlh" as layout>

<@layout.layout>

    <main class="about-page">
        <img src="images/cb_logo.png" alt="cowboy bebop logo" class="about-image">
        <section class="about-content">
            <h1>About Character Gallery</h1>
            <p>This gallery was made to display a collection of characters from the series Cowboy Bebop. The purpose is to view character artwork and learn about them and the universe they belong in.</p>
            <p>Theming was made to match the space and vintage vibe of the series.


            <p>"Once upon a time, in New York City in 1941... at this club open to all comers to play, night after night, at a club named "Minston's Play House" in Harlem, they play jazz sessions competing with each other. 
                Young jazz men with a new sense are gathering. At last they created a new genre itself. They are sick and tired of the conventional fixed style jazz. 
                They're eager to play jazz more freely as they wish then... in 2071 in the universe... The bounty hunters, who are gathering in the spaceship "BEBOP", will play freely without fear of risky things.
                 They must create new dreams and films by breaking traditional styles. The work, which becomes a new genre itself, will be called... COWBOY BEBOP "

                    <p>
                This application uses Spring Boot MVC and FreeMarker
                to create dynamic web pages. Character information
                is stored in a PostgreSQL database hosted through Neon.
            </p>

            <p>
                The application is organized into different layers.
                The controller handles requests from users, the
                service layer manages character operations, and
                the repository communicates with the database using
                Spring Data JPA.
            </p>

            <p>
                FreeMarker takes the information retrieved from
                the database and displays it on the website.
                Users can browse characters, search by name or
                planet, view character details, and add, edit,
                or delete characters.
            </p>
    </main>
     <script 
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>
</body>
</html>

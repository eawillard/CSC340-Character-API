<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
     <link 
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
    crossorigin="anonymous"
>
     <link rel="stylesheet" href="style.css">
</head>
<body>
   <nav class="navbar">
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="about.html">About</a></li>
            <li><a href="details.html">Details</a></li>
            <li><a href="new-character-form.html">New Character</a></li>
        </ul>
    </nav>

    <header class="header">
        <h1>Cowboy Bebop Character Gallery</h1>
    </header>

    <main>
        <section class="search-section">
            <h2>Find Character</h2>

            <form class="search-bar" action="details.html" method="get">
                <input type="text" name="characterName" placeholder="Enter character name">
                <button type="submit">Search</button>
            </form>
        </section>

        <section class="gallery">
            
            <div class="character-card">
    <img src="images/Spike_spiegel.png" alt="Spike Spiegel">

    <div class="character-info">
        <h3>Spike Spiegel</h3>

        <p>
            Spike is the main protagonist of Cowboy Bebop.
            He is a bounty hunter and former member of the Red Dragon Crime Syndicate.
        </p>

        <p><strong>Planet of Origin: </strong> Mars </p>
        <p><strong>First Appearance:</strong> Session #1: Asteroid Blues</p>
        <p><strong>Weapon of Choice:</strong> Jericho 941 R</p>

        <a href="details.html" class="details-button">
            View Details
        </a>
    </div>
</div>
           
         <div class="character-card">
    <img src="images/jet_black.png" alt="Jet Black">

    <div class="character-info">
        <h3>Jet Black</h3>

        <p>
            Jet Black is Spike's partner as well as a former police officer of the ISSP. He is also the captain of the Bebop.
        </p>

        <p><strong>Planet of Origin:</strong> Ganymede </p>
        <p><strong>First Appearance:</strong> Session #1: Asteroid Blues</p>
        <p><strong>Weapon of Choice:</strong> Walther P99</p>

        <a href="details.html" class="details-button">
            View Details
        </a>
    </div>
</div>
<div class="character-card">
    <img src="images/faye.png" alt="Faye Valentine">

    <div class="character-info">
        <h3>Faye Valentine</h3>

        <p>
            Faye is a fellow bounty hunter who joins the Bebop Crew.
         She can't remember her past due to being cryogenically frozen for years and has an impossibly large debt yet spends all her earnings gambling.
        </p>

        <p><strong>Planet of Origin:</strong> Earth</p>
        <p><strong>First Appearance:</strong> Session #3 Honky Tonk Women</p>
        <p><strong>Weapon of Choice:</strong> Glock 30</p>

        <a href="details.html" class="details-button">
            View Details
        </a>
    </div>
</div>
<div class="character-card">
    <img src="images/Edward.png" alt="Edward">

    <div class="character-info">
        <h3>Edward</h3>

        <p>
           Ed is a brilliant hacker that goes by the nickname "Radical Edward". She is very eccentric and is the final addition to the Bebop crew. 
        </p>

        <p><strong>Planet of Origin: </strong> Earth</p>
        <p><strong>First Appearance:</strong> Session #9: Jamming with Edward</p>
        <p><strong>Full Name:</strong> Edward Wong Hau Pepelu Tivrusky IV</p>
   

        <a href="details.html" class="details-button">
            View Details
        </a>
    </div>
</div>
<div class="character-card">
    <img src="images/ein.png" alt="Ein">

    <div class="character-info">
        <h3>Ein</h3>

        <p>
            Ein is a welsh corgi and a "data dog" with heightenened intelligence that Spike and Jet saved. He barks once for "yes" and twice for "no", and is the cutest member of the Crew.
        </p>

        <p><strong>Planet of Origin:</strong> Cowboy Bebop</p>
        <p><strong>First Appearance:</strong> Session #2: Stray Dog Strut </p>
        <p><strong>Abilities:</strong> Answering a telephone, communicate with other animals, and hacking a computer database with his mind.    </p>

        <a href="details.html" class="details-button">
            View Details
        </a>
    </div>
</div>
            
        </section>
    </main>
     <script 
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>
</body>
</html>

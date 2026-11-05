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
    
    <main class="details-page">
        <section class="details-image" aria-label="Character portrait">
            <img src="images/Spike_spiegel.png" alt="Spike Spiegel">
        </section>

        <section class="details-content">
            <h1>${character.name}</h1>
            <p>"Just a humble bounty hunter, ma'am." - Spike Spiegel</p>

            <h2>Character Information</h2>
            <ul>
          <li><strong>Alias:</strong> Swimming Bird</li>
         <li><strong>Hair color:</strong> Dark Green</li>
           <li><strong>Eye color:</strong> Right - Light brown; Left - brown</li>
           <li><strong>Height:</strong> 6'1"</li>
           <li><strong>Weight:</strong> 175 lbs</li>
         <li><strong>Birth date:</strong> June 26th, 2044</li>
          
            </ul>

            <h2>Backstory</h2>
            <p>${character.description}</p>

            <h2>Abilities</h2>
            <ul>
                <li>Martial Arts</li>
                <li>Piloting (pilots Swordfish II)</li>
                <li>Marksmanship</li>
            </ul>

            <h2>Personality</h2>
            <p>Spike is a cynical, nonchalant, and laid-back character. He lounges, sleeps, and smokes a lot, and is often seen as lazy. However, he is also a skilled fighter and bounty hunter, and is known for his quick reflexes and sharp wit.
                 He also has very little patience and can be hot headed. He has an inability to let go of his past and plays a role more akin to an anti-hero.

                 

            <a href="index.html" class="button">Back to Gallery</a>
        </section>
    </main>
     <script 
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>
</body>
</html>

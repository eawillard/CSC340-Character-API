<#macro layout>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Cowboy Bebop Character Gallery</title>

    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">

    <link rel="stylesheet" href="/css/style.css">
</head>

<body>

    <nav class="navbar">
        <a href="/characters" class="nav-logo">
            COWBOY BEBOP
        </a>

        <ul>
            <li><a href="/characters">Home</a></li>
            <li><a href="/characters/about">About</a></li>
            <li><a href="/characters/new">Add a Character</a></li>
        </ul>
    </nav>

    <#nested>

    <footer class="site-footer">
        <p>Cowboy Bebop Character Gallery | 2071</p>
    </footer>

    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
    </script>

</body>
</html>
</#macro>
<!doctype html>
<html>
<head>
    <title>CodeIgniter Tutorial</title>
</head>
<body>

    <h1><?= esc($title) ?></h1>
    <!-- imprimer un lien absolu. -->
        
    <p><?='lien URL absolu:'?></p>
    <p><?= base_url()?></p>

<!-- The header contains the basic HTML code that you’ll want to display before loading the main view, together with a heading. It will also output the $title variable, which we’ll define later in the controller. -->
<!-- an esc() function. It’s a global function provided by CodeIgniter to help prevent XSS attacks -->
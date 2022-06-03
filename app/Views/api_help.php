<!DOCTYPE html>

<html>
    <head>
        <title>API help</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width,
initial-scale=1.0">
    </head>
    <body>
        <h1>API</h1>
           <ul> <li>
                <a href="<?= site_url("api/recipes")?>">Voir toutes les recettes</a>
            </li>
            <li>
                <a href="<?= site_url("api/category/season")?>">Voir toutes les recettes de saison</a>
            </li>
            <li>
                <a href="<?= site_url("api/category/sansgluten")?>">Voir toutes les recettes sans gluten</a>
            </li> 
            <li>
                <a href="<?= site_url("api/search/Macarons")?>">Recherche toutes les recettes Macarons </a>
            </li> 
            <li>
                <a href="<?= site_url("api/searchId/3")?>">Recherche une recette par id </a>
            </li> 
        </ul>
    </body>
</html>


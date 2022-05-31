
<h1><?= 'Toutes les tags' ?></h1>
<?php 

// //var_dump($tag);
// foreach ($tag as $key => $value){
// //var_dump($value);
// echo $value->getTags();
// die();
// }

//<li> <a href="tag/<?php echo $value->id_Cat ... qui permet d'aller à la page associeée id_Cat 
?>
        <ul>
            <?php
            foreach ($cat as $key => $value) {
            ?>
                <li> <a href="tag/<?php echo $value->id_Cat?>"> 
                <?php
                  //afficher la valeur de cat coresspendance
                    echo $value->cat;
                    //............
                } ?>
                </a></li>
        </ul>


        
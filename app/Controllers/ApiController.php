<?php
namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\M_ModelRecipe;

class ApiController extends BaseController{
    public function index(){
        return view('api_help');
}

// on fait appelle à la méthode findAllForApi() 
// et on retourne du JSON
    public function recipes(){
        $model = new M_ModelRecipe();
        $recipes = $model->findAllForApi();
        header('Content-Type: application/json');
        echo json_encode($recipes);
        die;
}
    public function category($cat){
        $model = new M_ModelRecipe();
        $recipesByCat = $model->findAllForApiByCat($cat);
        header('Content-Type: application/json');
        echo json_encode($recipesByCat);
        die;
} 

 public function search($motCle){
        $model = new M_ModelRecipe();
        $recipesBySearch = $model->findOneNameIdForApi($motCle);
        header('Content-Type: application/json');
        echo json_encode($recipesBySearch);
        die;
} 
public function searchId($idRecette){
    $model = new M_ModelRecipe();
    $recipesBySearchId = $model->findOneRecetteForApi($idRecette);
    header('Content-Type: application/json');
    echo json_encode($recipesBySearchId);
    die;
} 

}
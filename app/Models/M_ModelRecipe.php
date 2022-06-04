<?php
namespace App\Models;
use CodeIgniter\Model;
 
class M_ModelRecipe extends Model {
    public function findAllForApi() {
        $query = $this->db->query('SELECT * FROM `view_api_recipes_all`');
        return $query->getResult();
}

    public function findAllForApiByCat($cat) {
        switch ($cat) {
            //easy
            case 'easy':
                $id_Cat = 1;
                $query = $this->db->query('SELECT * FROM `view_api_recipes_all` WHERE id_Cat = ?',array($id_Cat));
                return $query->getResult();
                break;
            //season    
            case 'sansgluten':
                $id_Cat = 2;
                $query = $this->db->query('SELECT * FROM `view_api_recipes_all` WHERE id_Cat = ?',array($id_Cat));
                return $query->getResult();
                break;
            //tradition    
            case 'season':
                $id_Cat = 3;
                $query = $this->db->query('SELECT * FROM `view_api_recipes_all` WHERE id_Cat = ?',array($id_Cat));
                return $query->getResult();
                break;   
             //sans gluten   
            case 'tradition':
                $id_Cat = 4;
                $query = $this->db->query('SELECT * FROM `view_api_recipes_all` WHERE id_Cat = ?',array($id_Cat));
                return $query->getResult();
                break;     
            default:
                $query = $this->db->query('SELECT * FROM `view_api_recipes_all`');
                return $query->getResult();
                break;
        }
}
/**
 * findOneForApi fonction qui permet de extraire les recipes selon un category précise 
 * $tag = category de recipe
 */
public function findOneForApi($id_Cat) {
    // requette reparere pour la sécurity
    $query = $this->db->query('SELECT * FROM `view_api_recipes_all` WHERE id_Cat = ?',array($id_Cat));
    return $query->getResult();
}

/**
 * findOneNameIdForApi fonction qui permet de extraire les recipes selon un mot clé précise 
 * $motCle = Mot clé qui liason de recipe
 */
public function findOneNameIdForApi($motCle) {
    // requette reparere pour la sécurity
    $query = $this->db->query(
        "SELECT `Id`,`nom_de_la_recette` FROM `RecettesNesti` WHERE nom_de_la_recette LIKE '%".$motCle."%'");
    return $query->getResult(); 
}
/**
 * findOneRecetteForApi fonction qui permet de extraire la recette selon son id
 * $idRecette 
 */
public function findOneRecetteForApi(int $idRecette) {
    // requette reparere pour la sécurity
    $query = $this->db->query('SELECT * FROM `view_api_recipes_detail_all` WHERE Id = ?',array($idRecette));  
    return $query->getResult(); 
}

}
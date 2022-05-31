<?php
namespace App\Models;
use CodeIgniter\Model;
 
class M_ModelRecipe extends Model {
    public function findAllForApi() {
        $query = $this->db->query('SELECT * FROM `view_api_recipes`');
        return $query->getResult();
}

    public function findAllForApiByCat(String $cat) {
        switch ($cat) {
            case 'season':
                $query = $this->db->query('SELECT * FROM `view_api_recipes_season_s`');
                return $query->getResult();
                break;
            case 'sansgluten':
                $query = $this->db->query('SELECT * FROM `view_api_recipes_sans_gluten_s`');
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
}
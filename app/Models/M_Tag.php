<?php
namespace App\Models;
use CodeIgniter\Model;

class M_Tag extends Model {
    protected $DBgroup ='default';
    protected $table = 'CatNesti' ; //nom de la table
    protected $primaryKey = 'id_Cat';
    protected $allowedFields = ['cat']; // nom des colonnes autorisées
    protected $returnType = 'App\Entities\E_Tag'; //Type de retour
    protected $useTimestamps = false; //Utilisation du timestamps

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

// class​ ​UserModel​ ​extends​ ​Model​ {
//     ​protected​ $table = ​'tag'​; ​// nom de la table
//     ​protected​ $allowedFields = [​'name'​]; // Nom des colonnes autorisées 
//     ​protected​ $returnType = ​'App\Entities\Tag'​; // Type de retour 
//     ​protected​ $useTimestamps = ​true​; // Utilisation du timestamps
//     }
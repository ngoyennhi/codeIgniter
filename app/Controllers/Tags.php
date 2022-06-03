<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\M_Tag;

class Tags extends BaseController
{
    public function index(){

        $m_tag = new M_Tag();
        $rqt = $m_tag -> findAll(); 
        // // test la connexion BDD par vérifier la variable $rqt 
        //var_dump($rqt);
        // die;
        $this ->renderTemplate('tag/all-tags',['cat'=>$rqt]);
    }
    // //function qui permet de rediriger vers la page all tags
    // public function allTags(){
    //     $this ->renderTemplate('tag/all-tags',);
    // }

        //function qui permet de rediriger vers la page un tag
        public function oneTag($id_tag){
            $m_tag = new M_Tag();
            // solution 1:
            //$rqt = $m_tag->find($id_tag); 
            //$this ->renderTemplate('tag/one-tag',['cat'=>$rqt]);
            // solution 2:
            $cat = $m_tag->findOneForApi($id_tag); 
            //$this ->renderTemplate('tag/one-tag',['cat'=>$cat]);    
            $this ->renderJson($cat);
        }

        //function qui permet de rediriger vers la page rechercher tags
        public function rechercherTag(){
            $this ->renderTemplate('tag/search-tag',);
        }

    /**
     * Méthode qui permet de retourner du JSON
     * @param type $data
    */
    public function renderJson(array $data) {

        header('Content-Type: application/json');
        echo json_encode($data);
        die;
    }

}

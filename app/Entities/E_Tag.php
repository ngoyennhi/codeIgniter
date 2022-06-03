<?php 
namespace App\Entities;
use CodeIgniter\Entity\Entity;
class E_Tag extends Entity {
  public function getTags()
  {
      //return $this->Nom;
      return $this->Cat;
  }
}
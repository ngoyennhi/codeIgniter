<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index()
    {
    $this->renderTemplate('pages/home');
   
    //  $this->home(); //solution 2
    }
    //solution 2
    // public function home()
    // {
    //     $this->renderTemplate();
    //    // $this->renderTemplate('home');
    // }
}

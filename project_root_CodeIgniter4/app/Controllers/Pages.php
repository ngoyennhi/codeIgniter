<?php

namespace App\Controllers;

class Pages extends BaseController
{
    public function index()
    {
     $this -> renderTemplate('home');
    }   
}
// You have created a class named Pages, with a renderTemplate() method that accepts one argument named $page. It also has an index() method
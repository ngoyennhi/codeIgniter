<?php

namespace App\Controllers;

class Contact extends BaseController
{
    public function index()
    {
        $this->renderTemplate('contact');
    }
}

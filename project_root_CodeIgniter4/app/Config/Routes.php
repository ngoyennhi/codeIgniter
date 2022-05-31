<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (file_exists(SYSTEMPATH . 'Config/Routes.php')) {
    require SYSTEMPATH . 'Config/Routes.php';
}

/*
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
$routes->setAutoRoute(true);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
$routes->get('/', 'Home::index');
// http://localhost:8888/nestiADMIN_CodeIgniter4/project_root_CodeIgniter4/public/tag
$routes->get('tag','Tags::index'); 
// // http://localhost:8888/nestiADMIN_CodeIgniter4/project_root_CodeIgniter4/public/tag
// $routes->get('tag','Tags::allTags'); 
// http://localhost:8888/nestiADMIN_CodeIgniter4/project_root_CodeIgniter4/public/tag/1
$routes->get('tag/(:num)','Tags::oneTag/$1'); 
// http://localhost:8888/nestiADMIN_CodeIgniter4/project_root_CodeIgniter4/public/tag/search
$routes->get('tag/search','Tags::rechercherTag'); 

//route API
$routes->get('/api', "ApiController::index");
$routes->get('/api/recipes', "ApiController::recipes");
$routes->get('/api/category/(:alpha)', "ApiController::category/$1");
/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (file_exists(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}

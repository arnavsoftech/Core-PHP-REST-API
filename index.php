<?php
error_reporting(E_ALL);
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");

define('BASEPATH', __DIR__);
include_once "config/autoload.php";
// Get the HTTP method
$method = $_SERVER['REQUEST_METHOD'];

// Get the request data
$request = explode('/', trim($_SERVER['PATH_INFO'], '/'));
$apiRoute = $request[0] ?? 'users';
require BASEPATH . "/api/$apiRoute.php";

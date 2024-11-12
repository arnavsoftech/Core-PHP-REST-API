<?php

// Get the HTTP method
$method = $_SERVER['REQUEST_METHOD'];

// Get the request data
$request = explode('/', trim($_SERVER['PATH_INFO'], '/'));
$apiRoute = $request[0] ?? 'users';
require BASEPATH . "/api/$apiRoute.php";

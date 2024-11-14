<?php
error_reporting(E_ALL);
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");

define('BASEPATH', __DIR__);
include_once "config/autoload.php";

// Get the request data
$apiRoute = segment(1) ?? 'users';
require BASEPATH . "/api/$apiRoute.php";

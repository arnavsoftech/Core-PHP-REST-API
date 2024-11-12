<?php
include_once "constant.php";
include_once "database.php";

$db = new Database(DATABASE, USERNAME, PASSWORD, HOSTNAME);
function db_connect()
{
    $db = Database::instance();
    return $db;
}

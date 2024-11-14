<?php
$db = new Database(DATABASE, USERNAME, PASSWORD, HOSTNAME);
function db_connect()
{
    $db = Database::instance();
    return $db;
}

function segment(int $index)
{
    $routes = explode('/', trim($_SERVER['PATH_INFO'], '/'));
    return $routes[$index - 1] ?? null;
}

function render(bool $success, string | null $message = '',  array | object | null $data = null,  int $response_code = 200)
{
    http_response_code($response_code);
    if ($message == null) $message = '';
    echo json_encode(['success' => $success, 'data' => $data, 'message' => $message]);
}

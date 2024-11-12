<?php

use RestAPI\User;

include BASEPATH . "/model/User.php";
$request = explode('/', trim($_SERVER['PATH_INFO'], '/'));

$user    = new User();
$action  = $request[1] ?? null;

switch ($action) {
    case 'details':
        http_response_code(200);
        $id = $request[2];
        $item = $user->getUser($id);
        echo json_encode(['success' => true, 'data' => $item, 'message' => 'Success']);
        break;
    case 'all':
        http_response_code(200);
        $items = $user->allUsers();
        echo json_encode(['success' => true, 'data' => $items, 'message' => 'Success']);
        break;
    default:
        http_response_code(405);
        echo json_encode(["message" => "Method not allowed"]);
        break;
}

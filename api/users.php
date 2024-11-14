<?php

use RestAPI\User;

include BASEPATH . "/model/User.php";
$user    = new User();
$action  = segment(2);

switch ($action) {
    case 'details':
        $id = segment(3);
        $item = $user->getUser($id);
        if (is_object($item)) {
            render(true, null, $item);
        } else {
            render(false, "Record not found");
        }
        break;
    case 'all':
        $items = $user->allUsers();
        render(true, 'All Users', $items);
        break;
    default:
        render(false, 'Method not allowed', null, 405);
        break;
}

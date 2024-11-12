<?php

namespace RestAPI;

include_once "Core.php";
class User extends Core
{
    public function __construct()
    {
        parent::__construct();
    }

    public function getUser($id)
    {
        $item = $this->db->select('ai_users', ['id' => $id], 1)->row();
        return $item;
    }

    public function allUsers()
    {
        $items = $this->db->select('ai_users')->result();
        return $items;
    }
}

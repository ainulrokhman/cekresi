<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class UserModel extends CI_Model {
    public function getUser($data)
    {
        $user = $this->db->get_where('user', ['email' => $data['email']])->row();
        
        if (isset($user)) {
            return password_verify($data['password'], $user->password);
        }

        return false;
    }

    public function insert($data)
    {
        $this->db->insert('user', $data);
    }
}

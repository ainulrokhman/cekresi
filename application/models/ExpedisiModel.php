<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ExpedisiModel extends CI_Model {

    public function getData()
    {
        return $this->db->get('expedisi')->result_array();
    }
}
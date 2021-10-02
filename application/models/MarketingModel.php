<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MarketingModel extends CI_Model {

    public function getData()
    {
        return $this->db->get('marketing')->result_array();
    }
}
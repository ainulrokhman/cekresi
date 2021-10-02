<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class TransaksiModel extends CI_Model {

    public function getData()
    {
        return $this->db->get('view_trx')->result_array();
    }

    public function getId($id)
    {
        return $this->db->get_where('transaksi', ['id'=> $id])->row_array();
    }

    public function insert($data)
    {
        $post = [];
        foreach ($data as $key => $value) {
            if ($key === 'expedisi') {
                $key = 'id_expedisi';
            }
            if ($key === 'marketing') {
                $key = 'id_marketing';
            }
            foreach ($value as $k => $v) {
                $post[$k][$key] = $v;
            }
        }

        $this->db->insert_batch('transaksi', $post);
    }

    // ===============================================================================
    // dataTables
    var $table = 'view_trx';

    private function _getData()
    {
        $this->db->from($this->table);
        if (isset($_POST['search']['value'])) {
            $this->db->like('konsumen', $_POST['search']['value']);
            $this->db->or_like('marketing', $_POST['search']['value']);
            $this->db->or_like('awb', $_POST['search']['value']);
            $this->db->or_like('tanggal', $_POST['search']['value']);
        }

        if (isset($_POST['order'])) {
            $this->db->order_by(($_POST['order'][0]['column']), $_POST['order'][0]['dir']);
        }
    }

    public function getDataTable()
    {
        $this->_getData();
        if ($_POST['length'] != -1) {
            $this->db->limit($_POST['length'], $_POST['start']);
        }
        $query = $this->db->get();
        return $query->result();
    }

    public function count_filtered_data()
    {
        $this->_getData();

        $query = $this->db->get();
        return $query->num_rows();
    }

    public function count_all_data()
    {
        $this->db->from($this->table);
        return $this->db->count_all_results();
    }

}
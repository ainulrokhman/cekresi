<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class RekapModel extends CI_Model {

    public function insert()
    {
        $this->db->insert('rekap', $_POST);

        $this->db->where('id', $_POST['id_trx']);
        $this->db->update('transaksi', ['status_transaksi' => 1]);
        return json_encode(['data' => 'sukses']);
    }

    // ===============================================================================
    // dataTables
    var $table = 'trx_selesai';

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
            $column = '';
            switch ($_POST['order'][0]['column']) {
                case '0':
                    $column = 'tanggal';
                    break;
                case '1':
                    $column = 'konsumen';
                    break;
                case '2':
                    $column = 'marketing';
                    break;
                case '3':
                    $column = 'obat';
                    break;
                case '4':
                    $column = 'awb';
                    break;
                case '5':
                    $column = 'status';
                    break;
            }
            $this->db->order_by($column, $_POST['order'][0]['dir']);
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
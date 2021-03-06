<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Rekap extends CI_Controller {

    public function insert()
    {
        $this->load->model('RekapModel', 'rekap');

        echo $this->rekap->insert();
    }   

	public function index()
	{
		$data['title'] = 'Laporan';
		$data['css'][] = base_url('assets/css/dataTables.bootstrap4.min.css');
		$data['css'][] = base_url('assets/css/datepicker.css');
		$data['css'][] = 'https://cdn.datatables.net/buttons/2.0.0/css/buttons.dataTables.min.css';
		$data['js'][] = base_url('assets/js/jquery-3.4.1.js');
		$data['js'][] = base_url('assets/js/jquery.dataTables.min.js');
		$data['js'][] = base_url('assets/js/dataTables.bootstrap5.min.js');
		$data['js'][] = 'https://cdn.datatables.net/buttons/2.0.0/js/dataTables.buttons.min.js';
		$data['js'][] = 'https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js';
		$data['js'][] = 'https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js';
		$data['js'][] = 'https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js';
		$data['js'][] = 'https://cdn.datatables.net/buttons/2.0.0/js/buttons.html5.min.js';
		$data['js'][] = 'https://cdn.datatables.net/buttons/2.0.0/js/buttons.print.min.js';
		$data['js'][] = base_url('assets/js/bootstrap-datepicker.js');
		$data['js'][] = base_url('assets/js/rekap.js');
		// $data['js'][] = base_url('assets/js/ajax.js');
		my_view('rekap/laporan', $data);
	}

	public function hasil()
	{		
		$data['title'] = 'Hasil Tracking';
		$data['css'][] = base_url('assets/css/dataTables.bootstrap4.min.css');
		$data['css'][] = base_url('assets/css/datepicker.css');
		$data['css'][] = 'https://cdn.datatables.net/buttons/2.0.0/css/buttons.dataTables.min.css';
		$data['js'][] = base_url('assets/js/jquery-3.4.1.js');
		$data['js'][] = base_url('assets/js/jquery.dataTables.min.js');
		$data['js'][] = base_url('assets/js/dataTables.bootstrap5.min.js');
		$data['js'][] = 'https://cdn.datatables.net/buttons/2.0.0/js/dataTables.buttons.min.js';
		$data['js'][] = 'https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js';
		$data['js'][] = 'https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js';
		$data['js'][] = 'https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js';
		$data['js'][] = 'https://cdn.datatables.net/buttons/2.0.0/js/buttons.html5.min.js';
		$data['js'][] = 'https://cdn.datatables.net/buttons/2.0.0/js/buttons.print.min.js';
		$data['js'][] = base_url('assets/js/bootstrap-datepicker.js');
		$data['js'][] = base_url('assets/js/hasil-track.js');
		// $data['js'][] = base_url('assets/js/ajax.js');
		my_view('datatables/index', $data);
	}

    public function datatables()
	{
        $this->load->model('RekapModel', 'rekap');
		$this->rekap->table('view_laporan');
       
		$results = $this->rekap->getDataTable();
		$data = [];
		foreach ($results as $result ) {
			$row = [];
			$row[] = $result->tanggal;
			$row[] = $result->konsumen;
			$row[] = $result->marketing;
			$row[] = $result->obat;
			$row[] = $result->awb;
			$data[] = $row;
		}

		$output = [
			'draw' => $_POST['draw'],
			'recordsTotal' => $this->rekap->count_all_data(),
			'recordsFiltered' => $this->rekap->count_filtered_data(),
			'data' => $data,
		];

		$this->output->set_content_type('application/json')->set_output(json_encode($output));

	}

	public function result()
	{
		$this->load->model('RekapModel', 'rekap');
		$this->rekap->table('trx_selesai');
       
		$results = $this->rekap->getDataTable();
		$data = [];
		// $no = $_POST['start'];
		foreach ($results as $result ) {
			$badge = 'success';
			if ($result->status === "RETURNED") {
				$badge = "danger";
			}
			$selesai = "<span class='badge bg-$badge' title='$result->keterangan'>" . 
			date("d/m", strtotime($result->tanggal_sampai)) . " $result->status</span>";
			$row = [];
			$row[] = $result->tanggal;
			$row[] = $result->konsumen;
			$row[] = $result->marketing;
			$row[] = $result->obat;
			$row[] = $result->awb;
			$row[] = $selesai;
			$data[] = $row;
		}

		$output = [
			'draw' => $_POST['draw'],
			'recordsTotal' => $this->rekap->count_all_data(),
			'recordsFiltered' => $this->rekap->count_filtered_data(),
			'data' => $data,
		];

		$this->output->set_content_type('application/json')->set_output(json_encode($output));
	}
}
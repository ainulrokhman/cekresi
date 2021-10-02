<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		if (!$this->session->userdata('logged_in')) {
			redirect(base_url('user/login'));
		}

		$this->load->model('AuthModel', 'm_auth');
		$this->load->model('TransaksiModel', 'm_trx');
	}

	public function index()
	{
		$data['title'] = 'Testing';
		$data['js'][] = 'https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js';
		my_view('welcome_message', $data);
	}

	public function token()
	{
		echo $this->m_auth->getToken();
	}

	public function status()
	{
		$inputPost = $this->input->post();
		if ($inputPost) {
			header('Content-Type: application/json; charset=utf-8');
			$json = $this->m_auth->getStatus($inputPost['courier'],$inputPost['awb'],$inputPost['token']);
			echo $json;
		}
	}

	public function datatables()
	{
		$results = $this->m_trx->getDataTable();
		$data = [];
		// $no = $_POST['start'];

		foreach ($results as $result ) {
			$row = [];
			$row[] = $result->tanggal;
			$row[] = $result->konsumen;
			$row[] = $result->marketing;
			$row[] = $result->obat;
			$row[] = $result->awb;
			$row[] = "<div class='$result->awb text-center'><div class='spinner-grow spinner-grow-sm text-primary' role='status'><span class='visually-hidden'>Loading...</span></div><div class='spinner-grow spinner-grow-sm text-secondary' role='status'><span class='visually-hidden'>Loading...</span></div><div class='spinner-grow spinner-grow-sm text-success' role='status'><span class='visually-hidden'>Loading...</span></div></div>";
			$data[] = $row;
		}

		$output = [
			'draw' => $_POST['draw'],
			'recordsTotal' => $this->m_trx->count_all_data(),
			'recordsFiltered' => $this->m_trx->count_filtered_data(),
			'data' => $data,
			'hasil' => $results
		];

		$this->output->set_content_type('application/json')->set_output(json_encode($output));
	}
}

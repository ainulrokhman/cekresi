<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Marketing extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		if (!$this->session->userdata('logged_in')) {
			redirect(base_url('user/login'));
		}

		$this->load->model('MarketingModel', 'marketing');
	}
	
	public function index()
	{
		$data['title'] = 'Data Marketing';
		$data['css'][] = base_url('assets/css/dataTables.bootstrap4.min.css');
		$data['js'][] = base_url('assets/js/jquery-3.4.1.js');
		$data['js'][] = base_url('assets/js/jquery.dataTables.min.js');
		$data['js'][] = base_url('assets/js/dataTables.bootstrap5.min.js');
		$data['js'][] = base_url('assets/js/marketing/data.js');
		$data['marketing'] = $this->marketing->getData();

		my_view('marketing/index', $data);
	}

	public function insert()
	{
		$input = $this->input->post();
		$result = [];
		foreach ($input as $key => $value) {
			$value = array_map('trim', $value);
			foreach ($value as $k => $v) {
				$result[$k][$key] = strtoupper($v);
				$result[$k]['grup'] = 1;
			}
		}

		$this->db->insert_batch('marketing', $result);
		redirect('marketing');
	}
}

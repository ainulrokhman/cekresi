<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Transaksi extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		if (!$this->session->userdata('logged_in')) {
			redirect(base_url('user/login'));
		}

        $this->load->model('MarketingModel', 'marketing');
        $this->load->model('ExpedisiModel', 'expedisi');
        $this->load->model('TransaksiModel', 'transaksi');
	}

    public function test()
    {
        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => "https://pro.rajaongkir.com/api/waybill",
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "POST",
            CURLOPT_POSTFIELDS => "waybill=002746676927&courier=sicepat",
            CURLOPT_HTTPHEADER => array(
                "content-type: application/x-www-form-urlencoded",
                "key: 89764b0ef8bb10bca8e48175d4b573d8"
            ),
        ));
        

        $response = json_decode(curl_exec($curl), true);

        var_dump($response);
    }

	public function index()
	{
		$data['title'] = 'Halaman Utama';
		$data['css'][] = base_url('assets/css/dataTables.bootstrap4.min.css');
		$data['css'][] = base_url('assets/css/datepicker.css');
		$data['js'][] = base_url('assets/js/jquery-3.4.1.js');
		$data['js'][] = base_url('assets/js/jquery.dataTables.min.js');
		$data['js'][] = base_url('assets/js/dataTables.bootstrap5.min.js');
		$data['js'][] = base_url('assets/js/bootstrap-datepicker.js');
		$data['js'][] = base_url('assets/js/datatables.js');
		// $data['js'][] = base_url('assets/js/ajax.js');
		my_view('datatables/index', $data);
	}

    public function input()
    {
        $data = [
            'title' => 'Input Transaksi COD',
            'marketing' => $this->marketing->getData(),
            'expedisi' => $this->expedisi->getData(),
            'css' => [
                'https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.2/css/bootstrap-select.min.css',
                base_url('assets/css/datepicker.css'),
            ],
            'js' => [
                base_url('assets/js/jquery-3.4.1.js'),
                'https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.bundle.min.js',
                'https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.2/js/bootstrap-select.min.js',
                base_url('assets/js/bootstrap-datepicker.js'),
            ],
        ];

        my_view('transaksi/index', $data);
    }

    public function append()
    {
        $data = [
            'marketing' => $this->marketing->getData(),
            'expedisi' => $this->expedisi->getData(),
            'hapus' => true
        ];

        return $this->load->view('transaksi/input', $data);
    }

    public function insert()
    {
        $result = [];
        foreach ($_POST as $key => $value) {
            $result[$key] = array_map('trim', $value);
        }

        $this->transaksi->insert($result);
        redirect(base_url());
    }

    public function delete()
    {
        $this->db->delete('transaksi', $this->input->input_stream());
    }

    public function edit($id)
    {
        $input = $this->input->post();

        if ($input) {
            $data['tanggal'] = trim($input['tanggal']);
            $data['konsumen'] = trim($input['konsumen']);
            $data['id_marketing'] = trim($input['marketing']);
            $data['id_expedisi'] = trim($input['expedisi']);
            $data['resi'] = trim($input['resi']);
            $this->db->where('id', $id);
            $this->db->update('transaksi', $data);
            redirect('transaksi');
        } else {
            $data = [
                'title' => 'Form Edit',
                'data' => $this->transaksi->getId($id),
                'marketing' => $this->marketing->getData(),
                'expedisi' => $this->expedisi->getData(),
                'css' => [
                    'https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.2/css/bootstrap-select.min.css',
                    base_url('assets/css/datepicker.css'),
                ],
                'js' => [
                    base_url('assets/js/jquery-3.4.1.js'),
                    'https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.bundle.min.js',
                    'https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.2/js/bootstrap-select.min.js',
                    base_url('assets/js/bootstrap-datepicker.js'),
                ],
            ];

            my_view('transaksi/edit', $data);
        }
    }
}
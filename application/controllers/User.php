<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

    protected $INPUT;

    public function __construct()
    {
        parent::__construct();

        $this->load->model('UserModel', 'm_user');
        $this->INPUT = $this->input->post();
    }

    public function login()
    {
        if ($this->INPUT) {
            if ($this->m_user->getUser($this->INPUT)) {
                $this->session->set_userdata('logged_in', true);
                redirect(base_url('welcome'));
            } else {
                notify('danger', 'User tidak ada!');
                redirect(base_url('user/login'));
            }
        }
        return $this->load->view('user/login');
    }

	public function logout()
	{
		$this->session->unset_userdata('logged_in');
        notify('info', 'logged out');
        redirect(base_url('user/login'));
	}
}

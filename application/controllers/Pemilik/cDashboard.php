<?php
defined('BASEPATH') or exit('No direct script access allowed');

class cDashboard extends CI_Controller
{

	public function index()
	{
		$data = array();
		$this->load->view('Pemilik/Layout/head');
		$this->load->view('Pemilik/vDashboard', $data);
		$this->load->view('Pemilik/Layout/footer');
	}
}

/* End of file cDashboard.php */

<?php
defined('BASEPATH') or exit('No direct script access allowed');

class cPelanggan extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();

		$this->load->model('mPelanggan');
	}

	public function index()
	{
		$data = array(
			'pelanggan' => $this->mPelanggan->pelanggan()
		);
		$this->load->view('Admin/Layout/head');
		$this->load->view('Admin/Pelanggan/vPelanggan', $data);
		$this->load->view('Admin/Layout/footer');
	}
}

/* End of file cPelanggan.php */

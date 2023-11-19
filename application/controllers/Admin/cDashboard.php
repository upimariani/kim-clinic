<?php

defined('BASEPATH') or exit('No direct script access allowed');

class cDashboard extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		$data = array();
		$this->load->view('Admin/Layout/head');
		$this->load->view('Admin/vDashboard', $data);
		$this->load->view('Admin//Layout/footer');
	}
	public function detail_segmentasi($status)
	{
		$data = array(
			'detail_segmentasi' => $this->mDashboard->detail_segmentasi($status)
		);
		$this->load->view('Admin/Layout/head');
		$this->load->view('Admin/vDetailSegmentasi', $data);
		$this->load->view('Admin/Layout/footer');
	}
}

/* End of file cDashboard.php */

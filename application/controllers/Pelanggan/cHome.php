<?php
defined('BASEPATH') or exit('No direct script access allowed');

class cHome extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('mHome');
	}

	public function index()
	{
		$data = array(
			'produk' => $this->mHome->produk(),
			'review' => $this->mHome->review()
		);
		$this->load->view('Pelanggan/Layout/head');
		$this->load->view('Pelanggan/vHome', $data);
		$this->load->view('Pelanggan/Layout/footer');
	}
	public function addtocart()
	{
		$data = array(
			'id' => $this->input->post('id'),
			'name' => $this->input->post('nama'),
			'price' => $this->input->post('harga'),
			'qty' => '1',
			'stok' => $this->input->post('stok'),
			'picture' => $this->input->post('gambar')
		);
		$this->cart->insert($data);
		$this->session->set_flashdata('success', 'Produk berhasil disimpan di keranjang!');
		redirect('Pelanggan/cHome');
	}
}

/* End of file cHome.php */

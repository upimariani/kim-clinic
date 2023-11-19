<?php
defined('BASEPATH') or exit('No direct script access allowed');

class cPesananSaya extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('mPesananSaya');
		$this->load->model('mAnalisis');
	}

	public function index()
	{
		$data = array(
			'pesanan_saya' => $this->mPesananSaya->select()
		);
		$this->load->view('Pelanggan/Layout/head');
		$this->load->view('Pelanggan/vPesananSaya', $data);
		$this->load->view('Pelanggan/Layout/footer');
	}
	public function detail_transaksi($id)
	{
		$data = array(
			'detail' => $this->mPesananSaya->detail_transaksi($id)
		);
		$this->load->view('Pelanggan/Layout/head');
		$this->load->view('Pelanggan/vDetailPesanan', $data);
		$this->load->view('Pelanggan/Layout/footer');
	}
	public function bayar($id)
	{
		$config['upload_path']          = './asset/pembayaran';
		$config['allowed_types']        = 'gif|jpg|png|jpeg';
		$config['max_size']             = 500000;

		$this->load->library('upload', $config);
		if (!$this->upload->do_upload('gambar')) {

			$data = array(
				'detail' => $this->mPesananSaya->detail_transaksi($id)
			);
			$this->load->view('Pelanggan/Layout/head');
			$this->load->view('Pelanggan/vDetailPesanan', $data);
			$this->load->view('Pelanggan/Layout/footer');
		} else {
			$upload_data = $this->upload->data();
			$data = array(
				'stat_transaksi' => '1',
				'stat_pembayaran' => '1',
				'bukti_pembayaran' => $upload_data['file_name']
			);
			$this->mPesananSaya->update_status($id, $data);
			$this->session->set_flashdata('success', 'Anda berhasil melakukan pembayaran!!!');
			redirect('Pelanggan/cPesananSaya/detail_transaksi/' . $id, 'refresh');
		}
	}
	public function pesanan_diterima($id)
	{
		//bismillah
		//data test
		$data_test = $this->mAnalisis->data_test();
		$r_test = $data_test->recency;
		$f_test = $data_test->frequency;
		$m_test = $data_test->monetary;

		echo $r_test . '|' . $f_test . '|' . $m_test;
		echo '<br>';

		$variabel = $this->mAnalisis->variabel();
		foreach ($variabel as $key => $value) {
			$id_pelanggan = $value->id_pelanggan;

			$hasil = round((pow(($value->recency - $r_test), 2)) +  (pow(($value->frequency - $f_test), 2)) + (pow(($value->monetary - $m_test), 2)), 4);
			// echo $value->recency . ' | ' . $value->frequency . ' | ' . $value->monetary . ' Hasil: ' . $hasil;
			// echo '<br>';

			$update_hasil = array(
				'nilai' => $hasil
			);
			$this->db->where('id_pelanggan', $id_pelanggan);
			$this->db->update('pelanggan', $update_hasil);
		}

		//update status level member
		//data k=3
		$data_pelanggan = $this->mAnalisis->tampil_data_hasil();
		foreach ($data_pelanggan as $key => $value) {
			$data = array(
				'level_member' => '1'
			);
			$this->db->where('id_pelanggan', $value->id_pelanggan);
			$this->db->update('pelanggan', $data);
		}

		//transaksi selesai
		$data = array(
			'stat_transaksi' => '4'
		);
		$this->mPesananSaya->update_status($id, $data);
		$this->session->set_flashdata('success', 'Pesanan telah diterima!!!');
		redirect('Pelanggan/cPesananSaya/detail_transaksi/' . $id, 'refresh');
	}
	public function kritik_saran($id)
	{
		$data = array(
			'id_transaksi' => $id,
			'review' => $this->input->post('kritik_saran')
		);
		$this->db->insert('review', $data);
		$this->session->set_flashdata('success', 'Review Berhasil Dikirim!!!');
		redirect('Pelanggan/cPesananSaya/detail_transaksi/' . $id, 'refresh');
	}
}

/* End of file cPesananSaya.php */

<?php
defined('BASEPATH') or exit('No direct script access allowed');

class cCheckout extends CI_Controller
{

	public function index()
	{
		$this->load->view('Pelanggan/Layout/head');
		$this->load->view('Pelanggan/vCheckout');
	}
	public function hapus($rowid)
	{
		$this->cart->remove($rowid);
		$this->session->set_flashdata('success', 'Produk Berhasil di Hapus!');
		redirect('Pelanggan/cCheckout');
	}
	public function checkout()
	{
		$data = array(
			'id_pelanggan' => $this->session->userdata('id_pelanggan'),
			'tgl_transaksi' => date('Y-m-d'),
			'tot_transaksi' => $this->cart->total(),
			'stat_transaksi' => '0',
			'stat_pembayaran' => '0',
			'bukti_pembayaran' => '0',
			'ongkir' => $this->input->post('ongkir'),
			'alamat_pengiriman' => $this->input->post('alamat') . ' Kota. ' . $this->input->post('kota') . ' Provinsi. ' . $this->input->post('pronvinsi') . ' Expedisi. ' . $this->input->post('expedisi') . 'Paket ' . $this->input->post('paket')
		);
		$this->db->insert('transaksi', $data);

		//simpan data detail transaksi
		$id_transaksi = $this->db->query("SELECT MAX(id_transaksi) as id FROM `transaksi`")->row();
		foreach ($this->cart->contents() as $key => $value) {
			$detail = array(
				'id_transaksi' => $id_transaksi->id,
				'id_barang' => $value['id'],
				'qty' => $value['qty']
			);
			$this->db->insert('detail_transaksi', $detail);
		}

		//mengurangi stok
		foreach ($this->cart->contents() as $key => $value) {
			$stok_update = $value['stok'] - $value['qty'];
			$stok = array(
				'stok' => $stok_update
			);
			$this->db->where('id_barang', $value['id']);
			$this->db->update('barang', $stok);
		}

		$this->cart->destroy();
		$this->session->set_flashdata('success', 'Pesanan Berhasil Dipesan!');
		redirect('Pelanggan/cCheckout');
	}
}

/* End of file cCheckout.php */

<?php
defined('BASEPATH') or exit('No direct script access allowed');

class mHome extends CI_Model
{
	public function produk()
	{
		$this->db->select('*, barang.id_barang');
		$this->db->from('barang');
		$this->db->join('diskon', 'barang.id_barang = diskon.id_barang', 'left');
		return $this->db->get()->result();
	}
	public function review()
	{
		$this->db->select('*');
		$this->db->from('review');
		$this->db->join('transaksi', 'review.id_transaksi = transaksi.id_transaksi', 'left');
		$this->db->join('pelanggan', 'transaksi.id_pelanggan = pelanggan.id_pelanggan', 'left');
		return $this->db->get()->result();
	}
}

/* End of file mHome.php */

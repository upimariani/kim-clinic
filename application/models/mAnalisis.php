<?php
defined('BASEPATH') or exit('No direct script access allowed');

class mAnalisis extends CI_Model
{
	public function variabel()
	{
		return $this->db->query("SELECT COUNT(transaksi.id_transaksi) as frequency, DATEDIFF('" . date('Y-m-d') . "', MAX(tgl_transaksi)) as recency, SUM(tot_transaksi) as monetary, transaksi.id_pelanggan, nama_pelanggan FROM `transaksi` JOIN pelanggan ON pelanggan.id_pelanggan=transaksi.id_pelanggan GROUP BY transaksi.id_pelanggan")->result();
	}
	public function data_test()
	{
		return $this->db->query("SELECT COUNT(transaksi.id_transaksi) as frequency, DATEDIFF('" . date('Y-m-d') . "', MAX(tgl_transaksi)) as recency, SUM(tot_transaksi) as monetary, transaksi.id_pelanggan, nama_pelanggan FROM `transaksi` JOIN pelanggan ON pelanggan.id_pelanggan=transaksi.id_pelanggan GROUP BY transaksi.id_pelanggan LIMIT 1")->row();
	}
	public function tampil_data_hasil()
	{
		return $this->db->query("SELECT * FROM `pelanggan` ORDER BY nilai DESC LIMIT 3")->result();
	}
}

/* End of file mAnalisis.php */

<?php
defined('BASEPATH') or exit('No direct script access allowed');

class mPelanggan extends CI_Model
{
	public function pelanggan()
	{
		return $this->db->query("SELECT COUNT(transaksi.id_transaksi) as frequency,level_member, DATEDIFF('" . date('Y-m-d') . "', MAX(tgl_transaksi)) as recency, SUM(tot_transaksi) as monetary, transaksi.id_pelanggan, nama_pelanggan, alamat, no_hp_pelanggan FROM `transaksi` JOIN pelanggan ON pelanggan.id_pelanggan=transaksi.id_pelanggan GROUP BY transaksi.id_pelanggan")->result();
	}
}

/* End of file mPelanggan.php */

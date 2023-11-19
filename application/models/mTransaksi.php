<?php
defined('BASEPATH') or exit('No direct script access allowed');

class mTransaksi extends CI_Model
{
	public function transaksi()
	{
		$data['pesanan_masuk'] = $this->db->query("SELECT * FROM `transaksi` JOIN pelanggan ON transaksi.id_pelanggan = pelanggan.id_pelanggan WHERE stat_transaksi='0'")->result();
		$data['konfirmasi'] = $this->db->query("SELECT * FROM `transaksi` JOIN pelanggan ON transaksi.id_pelanggan = pelanggan.id_pelanggan WHERE stat_transaksi='1'")->result();
		$data['diproses'] = $this->db->query("SELECT * FROM `transaksi` JOIN pelanggan ON transaksi.id_pelanggan = pelanggan.id_pelanggan WHERE stat_transaksi='2'")->result();
		$data['dikirim'] = $this->db->query("SELECT * FROM `transaksi` JOIN pelanggan ON transaksi.id_pelanggan = pelanggan.id_pelanggan WHERE stat_transaksi='3'")->result();
		$data['selesai'] = $this->db->query("SELECT * FROM `transaksi` JOIN pelanggan ON transaksi.id_pelanggan = pelanggan.id_pelanggan WHERE stat_transaksi='4'")->result();
		return $data;
	}
	public function detail_pesanan($id)
	{
		$data['pesanan'] = $this->db->query("SELECT * FROM detail_transaksi JOIN transaksi ON detail_transaksi.id_transaksi=transaksi.id_transaksi JOIN barang ON detail_transaksi.id_barang=barang.id_barang WHERE transaksi.id_transaksi='" . $id . "';")->result();
		$data['transaksi'] = $this->db->query("SELECT * FROM `transaksi` JOIN pelanggan ON pelanggan.id_pelanggan=transaksi.id_pelanggan  WHERE transaksi.id_transaksi='" . $id . "';")->row();
		return $data;
	}
	public function update_status($id, $data)
	{
		$this->db->where('id_transaksi', $id);
		$this->db->update('transaksi', $data);
	}
}

/* End of file mTransaksi.php */

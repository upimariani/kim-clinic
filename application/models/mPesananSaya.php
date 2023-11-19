<?php
defined('BASEPATH') or exit('No direct script access allowed');

class mPesananSaya extends CI_Model
{
	public function select()
	{
		$this->db->select('*');
		$this->db->from('transaksi');
		$this->db->join('pelanggan', 'transaksi.id_pelanggan = pelanggan.id_pelanggan', 'left');
		$this->db->where('transaksi.id_pelanggan', $this->session->userdata('id_pelanggan'));
		return $this->db->get()->result();
	}
	public function detail_transaksi($id)
	{
		$data['transaksi'] = $this->db->query("SELECT * FROM `transaksi` JOIN pelanggan ON pelanggan.id_pelanggan=transaksi.id_pelanggan WHERE id_transaksi='" . $id . "'")->row();
		$data['detail_produk'] = $this->db->query("SELECT * FROM `transaksi` JOIN detail_transaksi ON transaksi.id_transaksi=detail_transaksi.id_transaksi JOIN barang ON barang.id_barang=detail_transaksi.id_barang WHERE transaksi.id_transaksi='" . $id . "'")->result();
		return $data;
	}
	public function update_status($id, $data)
	{
		$this->db->where('id_transaksi', $id);
		$this->db->update('transaksi', $data);
	}
}

/* End of file mPesananSaya.php */

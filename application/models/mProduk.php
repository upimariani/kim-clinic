<?php
defined('BASEPATH') or exit('No direct script access allowed');

class mProduk extends CI_Model
{
	public function insert($data)
	{
		$this->db->insert('barang', $data);
	}
	public function select()
	{
		$this->db->select('*');
		$this->db->from('barang');
		return $this->db->get()->result();
	}
	public function edit($id)
	{
		$this->db->select('*');
		$this->db->from('barang');
		$this->db->where('id_barang', $id);
		return $this->db->get()->row();
	}
	public function update($id, $data)
	{
		$this->db->where('id_barang', $id);
		$this->db->update('barang', $data);
	}
	public function delete($id)
	{
		$this->db->where('id_barang', $id);
		$this->db->delete('barang');
	}
}

/* End of file mProduk.php */

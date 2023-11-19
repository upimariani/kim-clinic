<?php
defined('BASEPATH') or exit('No direct script access allowed');

class mLogin extends CI_Model
{
	//pelanggan
	public function register($data)
	{
		$this->db->insert('pelanggan', $data);
	}
	public function login_pelanggan($username, $password)
	{
		$this->db->select('*');
		$this->db->from('pelanggan');
		$this->db->where('username_pelanggan', $username);
		$this->db->where('password_pelanggan', $password);
		return $this->db->get()->row();
	}
}

/* End of file mLogin.php */

<?php
defined('BASEPATH') or exit('No direct script access allowed');

class cLogin extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('mLogin');
	}

	public function index()
	{
		$this->form_validation->set_rules('username', 'Username', 'required');
		$this->form_validation->set_rules('password', 'Password', 'required');


		if ($this->form_validation->run() == FALSE) {
			$this->load->view('Pelanggan/Layout/head');
			$this->load->view('Pelanggan/vLogin');
			$this->load->view('Pelanggan/Layout/footer');
		} else {
			$username = $this->input->post('username');
			$password = $this->input->post('password');

			$data = $this->mLogin->login_pelanggan($username, $password);
			if ($data) {

				$array = array(
					'id_pelanggan' => $data->id_pelanggan,
					'alamat' => $data->alamat,
					'nama_pelanggan' => $data->nama_pelanggan,
					'level' => $data->level_member
				);

				$this->session->set_userdata($array);
				redirect('Pelanggan/cHome');
			} else {
				$this->session->set_flashdata('error', 'Username dan Password Anda Salah!');
				redirect('Pelanggan/cLogin');
			}
		}
	}
	public function register()
	{
		$this->form_validation->set_rules('nama', 'Nama', 'required');
		$this->form_validation->set_rules('no_hp', 'No Telepon', 'required');
		$this->form_validation->set_rules('jk', 'Jenis Kelamin', 'required');
		$this->form_validation->set_rules('alamat', 'Alamat', 'required');
		$this->form_validation->set_rules('username', 'Username', 'required');
		$this->form_validation->set_rules('password', 'Password', 'required');
		$this->form_validation->set_rules('tgl_lahir', 'Tanggal Lahir', 'required');

		if ($this->form_validation->run() == FALSE) {
			$this->load->view('Pelanggan/Layout/head');
			$this->load->view('Pelanggan/vRegister');
			$this->load->view('Pelanggan/Layout/footer');
		} else {
			$data = array(
				'nama_pelanggan' => $this->input->post('nama'),
				'alamat' => $this->input->post('alamat'),
				'tgl_lahir' => $this->input->post('tgl_lahir'),
				'jk' => $this->input->post('jk'),
				'username_pelanggan' => $this->input->post('username'),
				'password_pelanggan' => $this->input->post('password'),
				'no_hp_pelanggan' => $this->input->post('no_hp')
			);
			$this->mLogin->register($data);
			$this->session->set_flashdata('success', 'Anda Berhasil Registrasi! Silahkan Login!');
			redirect('Pelanggan/cLogin', 'refresh');
		}
	}
	public function logout()
	{
		$this->cart->destroy();
		$this->session->unset_userdata('id_pelanggan');
		$this->session->unset_userdata('alamat');
		$this->session->unset_userdata('level');
		$this->session->unset_userdata('nama_pelanggan');
		$this->session->set_flashdata('success', 'Anda Berhasil Logout!');
		redirect('Pelanggan/cLogin');
	}
}

/* End of file cLogin.php */

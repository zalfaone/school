<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Siswa extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
		$this->load->library(['ion_auth', 'form_validation']);
		$this->load->helper(['url', 'language']);

		$this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));

		$this->lang->load('auth');
		if (!$this->ion_auth->logged_in())
		{
			// redirect them to the login page
			redirect('auth/login', 'refresh');
		}
		else if (!$this->ion_auth->is_admin()) // remove this elseif if you want to enable this for non-admins
		{
			// redirect them to the home page because they must be an administrator to view this
			show_error('You must be an administrator to view this page.');
		}
	}

	public function index()
	{
		// siapkan data user yang aktif
		$data['user'] = $this->session->userdata();
		$id_user_aktif = $data['user']['user_id'];

		// ambil data user aktif
		$data['user'] = $this->ion_auth->user()->result_array();

		// dapatkan grup user saat ini
		$data['user_groups'] = $this->ion_auth->get_users_groups()->result();

		// info halaman aktif 
		$data['halaman'] = 'siswa';

		// judul web
		$data['judul'] = 'Siswa';

		// jurusan
		$data['jurusan'] = $this->db->get('jurusan')->result();

		// ambil url aktif
		$data['url'] = $this->uri->segment_array();

		$this->load->view('templates/backend/header',$data);
		$this->load->view('templates/backend/sidebar');
		$this->load->view('backend/siswa/index');
		$this->load->view('templates/backend/footer');
	}

	public function kelas($kelas)
	{
		$kelas = strtolower($kelas);
		// siapkan data user yang aktif
		$data['user'] = $this->session->userdata();
		$id_user_aktif = $data['user']['user_id'];

		// ambil data user aktif
		$data['user'] = $this->ion_auth->user()->result_array();

		// dapatkan grup user saat ini
		$data['user_groups'] = $this->ion_auth->get_users_groups()->result();

		// info halaman aktif 
		$data['halaman'] = 'siswa';

		// judul web
		$data['judul'] = 'Siswa '.strtoupper($kelas);

		// jurusan
		$data['jurusan'] = $this->db->get('jurusan')->result();

		// ambil url aktif
		$data['url'] = $this->uri->segment_array();

		// ambil data siswa kelas @kelas
		// $data[$kelas] = $this->db->get_where('siswa',['kelas' => 'X '.strtoupper($kelas) || 'XI '.strtoupper($kelas) || 'XII '.strtoupper($kelas)])->result();
		$data[$kelas] = $this->db->query("SELECT * FROM `siswa` WHERE kelas LIKE '%".$kelas."%'")->result();
		// var_dump($data[$kelas]); exit();


		$this->load->view('templates/backend/header',$data);
		$this->load->view('templates/backend/sidebar');
		$this->load->view('backend/siswa/kelas/'.$kelas);
		$this->load->view('templates/backend/footer');	
	}

	public function detail_siswa($nis)
	{
		// siapkan data user yang aktif
		$data['user'] = $this->session->userdata();
		$id_user_aktif = $data['user']['user_id'];

		// ambil data user aktif
		$data['user'] = $this->ion_auth->user()->result_array();

		// dapatkan grup user saat ini
		$data['user_groups'] = $this->ion_auth->get_users_groups()->result();

		// info halaman aktif 
		$data['halaman'] = 'siswa';

		$res = $this->db->get_where('siswa',['nis' => $nis])->result();

		// judul web
		$data['judul'] = 'Siswa '.$res[0]->kelas;	

		// jurusan
		$data['jurusan'] = $this->db->get('jurusan')->result();

		// ambil url aktif
		$data['url'] = $this->uri->segment_array();

		// ambil detail siswa
		$query = "SELECT * FROM siswa,orangtua WHERE siswa.nis = orangtua.nis";
		$result = $this->db->query($query)->result();
		$data['result'] = $result[0];
		// var_dump($data['result']); exit();

		$this->load->view('templates/backend/header',$data);
		$this->load->view('templates/backend/sidebar');
		$this->load->view('backend/siswa/detail');
		$this->load->view('templates/backend/footer');	
	}

	public function hapus_siswa($nis)
	{
		$query = $this->db->get_where('siswa',['nis' => $nis]);
		$query2 = $this->db->get_where('orangtua',['nis' => $nis]);
		$foto = $this->db->query("SELECT foto_siswa FROM siswa WHERE nis = $nis")->result();
		$nama_foto = $foto[0]->foto_siswa;
        if ($nis != null) {
            if ($query->num_rows() > 0 && $query2->num_rows() > 0 ) {
                $this->db->where('nis', $nis);
                $this->db->delete('siswa');
                $this->db->where('nis', $nis);
                $this->db->delete('orangtua');
                unlink('assets/img/'.$nama_foto);
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Data siswa berhasil dihapus.</div>');
            }elseif($query->num_rows() == 0 && $query2->num_rows() == 0){
                $this->session->set_flashdata('message', '<div class="alert alert-warning" role="alert">Data dengan nis '. $nis .' tidak ditemukan.</div>');
            }
        }else{
            $this->session->set_flashdata('message', '<div class="alert alert-warning" role="alert">Anda tidak menghapus data apapun.</div>');
        }
        redirect('siswa','refresh');
	}

}

/* End of file Siswa.php */
/* Location: ./application/controllers/Siswa.php */
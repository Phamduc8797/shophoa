<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class SanPham extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}
	function loadSanPham($soluongtin1trang)
	{
		$this->db->select('*');
		$this->db->join('chitietsp', 'chitietsp.id_loaisp = loaisp.id_loaisp', 'left');

		$ketqua = $this->db->get('loaisp',$soluongtin1trang,0);
		$ketqua = $ketqua->result_array();
		return $ketqua;
	}
	function getSanPhamById($id_sp)
	{
		$this->db->select('*');
		$this->db->from('loaisp');
		$this->db->join('chitietsp', 'chitietsp.id_loaisp = loaisp.id_loaisp', 'left');
		$this->db->where('chitietsp.id_sp', $id_sp);
		$ketqua = $this->db->get();
		$ketqua = $ketqua->result_array();
		return $ketqua;
	}
	function loadSanPhamLienQuan($soluongtin1trang,$id_loaisp,$id_sp)
	{
		$this->db->select('*');
		$this->db->join('chitietsp', 'chitietsp.id_loaisp = loaisp.id_loaisp', 'left');
		$this->db->where('chitietsp.id_loaisp', $id_loaisp);

		
		$this->db->where('chitietsp.id_sp !=', $id_sp);

		$ketqua = $this->db->get('loaisp',$soluongtin1trang,0);
		$ketqua = $ketqua->result_array();
		return $ketqua;
		// echo "<pre>";
		// var_dump($ketqua);
		// echo "</pre>";
	}


}

/* End of file sanpham.php */
/* Location: ./application/models/sanpham.php */
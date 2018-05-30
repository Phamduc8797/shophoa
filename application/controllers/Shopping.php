<?php
class Shopping extends CI_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->library('cart');
		$this->load->model('shopping_model');
		$this->load->model('SanPham');
	}
	function index(){
		//thong tin gio hang
		$carts=$this->cart->contents();

		//tong so san pham trong gio hang
		$total_items=$this->cart->total_items();
		$this->data['carts']=$carts;
		$this->data['total_items']=$total_items;
		//hien thi ra view
		$this->data['temp']='site/Tem-shopping';
		$this->load->view('site/Tem-shopping',$this->data);
	}
	function add()
	{
		$qty=1;
		$gia=$this->input->post('gia');
		$tensp=$this->input->post('tensp');
		$insert_data = array(

			'tensp' => $tensp,
			'gia' => $gia,
			'qty' => $qty
		);
		$this->cart->insert($insert_data);
		print_r($insert_data);
		$this->load->view('site/Tem-shopping',$insert_data);
		//redirect(base_url('Tem-shopping'));
	}
	function update_cart()
	{
		$cart=$this->cart->contents();
		//$cart_info = $_POST['cart'] ;
		foreach( $cart as $key => $row)
		{
			$rowid = $row['rowid'];
			$qty = 1;
			$gia=$this->input->post('gia');
			$amount = $gia * $row['qty'];
			$tensp=$this->input->post('tensp');
			$data = array(
				'rowid' => $rowid,
				'tensp'=>$tensp,
				'gia' => $gia,
				'amount' => $amount,
				'qty' => $qty
			);
			print_r($data) ;
			$this->cart->update($data);
		}
		$this->load->view('site/Tem-shopping');
		//redirect(base_url('Tem-shopping'));
	}
}
?>  
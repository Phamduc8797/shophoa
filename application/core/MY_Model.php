<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class MY_Model extends CI_Model
{
    //Ten bang
    var $table='';

    //key chinh cua bang
    var $key='id';

    //order mac dinh,luu cac gia tri sap xep
    var $order='';

    //cac field select mac dinh khi get_list, cau hinh cac cot du lieu muon lay
    var $select='';

    //Them row moi
    //$data : du lieu can them
    function create($data = array())
    {
        if($this->db->insert($this->table,$data)){
            return TRUE;
        }else{
            return false;
        }
    }

    //Cap nat row tu id
    //$id: khoa chinh cua bang can sua
    //$data: mang du lieu can sua
    function update($id,$date){
        if(!$id){
            return false;
        }
        $where=array();
        $where[$this->key]=$id;
        $this->update_rule($where,$date);
        return true;

    }

    //cap nhat row tu dieu kien
    //$where: dieu kien
    //$data: manf du lieu cap nhat
    function update_rule($where,$data){
        if(!$where){
            return false;
        }
        $this->db->where($where);
        $this->db->update($this->table,$data);
        return true;

    }

    //Xoa row tu id
    //$id: gia tri cua khoa chinh
    function delete($id){
        if(!$id){
            return false;
        }
        //neu la so
        if(is_numeric($id)){
            $where=array($this->key=>$id);
        }else{
            $where=$this->key."IN(".$id.")";
        }
        $this->del_rule($where);
        return true;
    }

    //xoa row tu dieu kien
    //$where: mang dieu kien de xoa
    function del_rule($where){
        if(!$where){
            return false;
        }
        $this->db->where($where);
        $this->db->delete($this->table);
        return true;
    }

    //Thuc hien cau lenh query
    //$sql: cau lenh sql
    function query($sql){
        $rows=$this->db->query($sql);
        return $rows->result;
    }


    //Lay thong tin tu 1 row, dong du lieu
    //$id: id can lay
    //Field: cot du lieu can lay
    function get_info($id,$field=''){
        if(!$id){
            return false;
        }
        $where=array();
        $where[$this->key]=$id;
        return $this->get_info_rule($where,$field);
    }

    //Lay thong tin cua row tu dieu kien
    //$where: mang dieu kien
    //Field: cot muon du lieu can lay
    function get_info_rule($where=array(),$field=''){
        if(!$field){
            $this->db->select($field);
        }
        $this->db->where($where);
        $query=$this->db->get($this->table);
        if($query->num_rows()){
            return $query->row();
        }
        return false;
    }

    /**
     * Lay tong so
     */
    function get_total($input = array())
    {
        //g?n c�c t�y ch?n n?u c�
        $this->get_list_set_input($input);
        //thuc hien truy van du lieu
        $query = $this->db->get($this->table);
        //tra ve du lieu
        return $query->num_rows();
    }

    /**
     * Lay danh sach
     * $input: mang cac du lieu dau vao
     */
    function get_list($input = array())
    {
        //xu ly du lieu dau vao
        $this->get_list_set_input($input);

        //thuc hien truy van du lieu
        $query = $this->db->get($this->table);

        //tra ve du lieu
        return $query->result();
    }

    /**
     * Gan cac thuoc tinh trong input khi lay danh sach
     */
    protected function get_list_set_input($input=array())
    {
        // Th�m ?i?u ki?n cho c�u truy v?n truy?n qua bi?n $input['where']

        if ((isset($input['where'])) && $input['where'])
        {
            $this->db->where($input['where']);
        }
        //tim kiem like
        //VD: $input['like']=array('name'=>'abc');
        if((isset($input['like']))&& $input['like']){
            $this->db->like($input['like'][0],$input['like'][1]);
        }

        // Th�m s?p x?p d? li?u th�ng qua bi?n $input['order'] (v� d? $input['order'] = array('id','DESC'))
        if (isset($input['order'][0]) && isset($input['order'][1]))
        {
            $this->db->order_by($input['order'][0], $input['order'][1]);
        }
        else
        {
            //m?c ??nh s? s?p x?p theo id gi?m d?n
            $order=($this->order=='')? array($this->table.'.'.$this->key,'desc'):$this->order;
            //$this->db->order_by('id', 'desc');
            $this->db->order_by($order[0], $order[1]);
        }

        // Th�m ?i?u ki?n limit cho c�u truy v?n th�ng qua bi?n $input['limit'] (v� d? $input['limit'] = array('10' ,'0'))
        if (isset($input['limit'][0]) && isset($input['limit'][1]))
        {
            $this->db->limit($input['limit'][0], $input['limit'][1]);
        }

    }

    /**
     * ki?m tra s? t?n t?i c?a d? li?u theo 1 ?i?u ki?n n�o ?�
     */
    function check_exists($where = array())
    {
        $this->db->where($where);
        //thuc hien cau truy van lay du lieu
        $query = $this->db->get($this->table);

        if($query->num_rows() > 0){
            return TRUE;
        }else{
            return FALSE;
        }
    }

}
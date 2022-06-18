<?php
defined('BASEPATH') OR exit('No direct script access allowed');

Class Users_Model extends CI_Model {
    
    function __construct(){
        parent::__construct();
        $this->load->database();
    }
    
    
    public function get_users(){
        $this->db->order_by('username', 'asc');
        $query=$this->db->get('users');
        
        return $query->result(); 
    }
    
    public function get_user_details($slug){
        $this->db->where('slug', $slug);
        $query=$this->db->get('users');
        
        return $query->result();
    }
    
     public function create_users($data){
        
        $this->db->insert('users', $data);
        $result=$this->create_slug($this->db->insert_id(), 'users');
        
        return $result;
    }
    
    public function create_slug($id, $table_name){
        $data['slug']=sha1($id);
        $this->db->where('id', $id);
        $result=$this->db->update($table_name, $data);
        
        return $result;
    }
    
    public function update_users($data, $slug){
        $this->db->where('slug', $slug);
        $result=$this->db->update('users', $data);
        
        return $result;
    }
    
    public function delete_users($slug){
        $this->db->where('slug', $slug);
        $result=$this->db->delete('users');
        
        return $result;
    }
 
    public function get_user_roles(){
        $this->db->where('role_slug !=', 'admin');
        $this->db->where('role_slug !=', 'superadmin');
        $query=$this->db->get('users_role');
        
        return $query->result();
    }
    
    public function change_user_password($data, $slug){
        $this->db->where('slug', $slug);
        $result=$this->db->update('users', $data);
        
        return $result;
    }   
}
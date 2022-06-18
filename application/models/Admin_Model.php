<?php
defined('BASEPATH') OR exit('No direct script access allowed');

Class Admin_Model extends CI_Model {
    
    function __construct(){
        parent::__construct();
        $this->load->database();
    }
    
    public function check_user($username, $password){
        $this->db->where('username', $username);
        $this->db->where('password', $password);
        
        $result=$this->db->get('users');
        
        return $result->result_array();
    }
    
    public function update_logs($userId, $name, $ip){
        $data=array('userid'=>$userId, 'name'=>$name, 'ip_address'=>$ip, 'date_time'=>date('Y-m-d H:i:s')); 
        $this->db->insert('user_logs', $data);
    } 
    
    public function update_last_login($userId){
        $data['lastLogin']=date('Y-m-d H:i:s');
        $this->db->where('id', $userId);
        $this->db->update('users', $data);
    }
    
    
}
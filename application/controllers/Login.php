<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
    public function __construct() 
    {
            parent::__construct();
            
            /* Load Login Model */ 
            $this->load->model('Login_Model');
            
            // Load session library
            $this->load->library('session');
            
            /* Load form helper */ 
            $this->load->helper(array('form'));
			
            /* Load form validation library */ 
            $this->load->library('form_validation');
            date_default_timezone_set('Asia/Kuala_Lumpur');
		
    }
     
	public function index()
	{
	   
       @$loginIn=$this->session->userdata['logged_in'];
            
        $data['title']="Login";
        
        if($_SERVER['REQUEST_METHOD'] == 'POST'){
             
            $username=$this->input->post('username');
            $password=sha1($this->input->post('password'));
            
            $result=$this->Login_Model->check_user($username, $password);
            $count_users=count($result);
            
            if($count_users >= 1){
                
                if($result[0]['isActive'] == 0){
                  $data=array('error_message'=>'Username is disabled by Administrator');
                }else{
                $this->Login_Model->update_logs($result[0]['id'], "Log in", $_SERVER['REMOTE_ADDR']);
                $this->Login_Model->update_last_login($result[0]['id']);
                
                $session_data = array('userid'=>$result[0]['id'], 'username' => $result[0]['username'], 'level' => $result[0]['role']);
                $this->session->set_userdata('logged_in', $session_data);
                    //print_r($result[0]['role']);
                   // exit();
                    if($result[0]['role'] == 'superadmin'){
                        header("location:/dashboard");                                  
                    }elseif($result[0]['role'] == 'admin'){
                        $redirectUrl = base_url();
                        $path = $redirectUrl."admin";
                    
                        //exit();
                        header("location:$path");
                    }elseif($result[0]['role'] == 'engineering'){
                        header("location:/engineering");
                    }elseif($result[0]['role'] == 'pipeline'){
                        header("location:/pipeline");
                    }
                
                print_r($this->session->userdata);
                }
            }else{
                $data=array('error_message'=>'Username or Password is incorrect');
            }
        } 
        
        
        $this->load->view('login', $data);
	}
    

}

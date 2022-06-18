<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends CI_Controller {

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
            
            // Load session library
            $this->load->library('session');
            
            // Load Masters Model
            $this->load->model('Masters_Model');

            // Load Masters Model
            $this->load->model('Users_Model');
            date_default_timezone_set('Asia/Kuala_Lumpur');
            
         @$loginIn=$this->session->userdata['logged_in'];
            if(!@$loginIn){
                header("Location:/login/");
            }
                 
            
    }
     
    public function index(){
        $data['title']="Users";
        
        @$loginIn=$this->session->userdata['logged_in'];
        $data['get_users']=$this->Users_Model->get_users();
        $data['get_roles']=$this->Users_Model->get_user_roles();
        
        $slug=@$_GET['slug'];
        $action=@$_GET['action'];
        
        if($slug != '' and $action == 'delete'){
                $result=$this->Users_Model->delete_users($slug);            
                
                if($result == 1)
                    {
                        header("location:/users/?sucess_message=1");
                    }else{
                        header("location:/masters/?failure_message=1");
                    }
            }
            
        
        $this->load->view('users', $data);
        
    }

    public function add_user(){
        
        @$loginIn=$this->session->userdata['logged_in'];
        $data['title']="Add Users";
        $data['get_roles']=$this->Users_Model->get_user_roles();
            
            if($_SERVER['REQUEST_METHOD'] == 'POST'){
                
                $data_post['username']=strtolower($this->input->post('username'));
                $data_post['password']=sha1($this->input->post('password'));
                $data_post['email']=$this->input->post('email');
                $data_post['firstName']=ucfirst($this->input->post('firstName'));
                $data_post['lastName']=ucfirst($this->input->post('lastName'));
                $data_post['role']=$this->input->post('role');
                $data_post['regDate']=date("Y-m-d H:i:s");
                $data_post['isActive']=0;
                $data_post['status']=1;
                    //print_r($data_post);
                    $result=$this->Users_Model->create_users($data_post);
                
                    if($result == 1)
                    {
                        $data['sucess_message']="User Created Sucessfully...!";
                    }else{
                        $data['error_message']="Oops something went wrong, Username & Email should be unique...!";
                    }
                
            }
                
        $this->load->view('add_users', $data);

        
    }


    public function edit_user($slug){
        
        @$loginIn=$this->session->userdata['logged_in'];
        $data['title']="Update Users";
        $data['get_roles']=$this->Users_Model->get_user_roles();
        $data['get_user_details']=$this->Users_Model->get_user_details($slug);
            
            if($_SERVER['REQUEST_METHOD'] == 'POST'){
                
                $data_post['email']=$this->input->post('email');
                $data_post['firstName']=ucfirst($this->input->post('firstName'));
                $data_post['lastName']=ucfirst($this->input->post('lastName'));
                $data_post['role']=$this->input->post('role');
                $data_post['lastUpdated']=date("Y-m-d H:i:s");
                $data_post['isActive']=1;
                $data_post['status']=1;
                    //print_r($data_post);
                    $result=$this->Users_Model->update_users($data_post, $slug);
                
                    if($result == 1)
                    {
                        $data['sucess_message']="User Updated Sucessfully...!";
                    }else{
                        $data['error_message']="Oops something went wrong, Username & Email should be unique...!";
                    }
                
            }
                
        $this->load->view('edit_users', $data);
    }
    
    public function change_password($slug){
        @$loginIn=$this->session->userdata['logged_in'];
        $data['get_user_details']=$this->Users_Model->get_user_details($slug);
     
        $data['title']="".$data['get_user_details'][0]->lastName." ".$data['get_user_details'][0]->firstName."-Change User Password";
            
            if($_SERVER['REQUEST_METHOD'] == 'POST'){
                
                $password=$this->input->post('password');
                $cpassword=$this->input->post('cpassword');
                    
                    if($password == $cpassword){
                        $data_post['password']=sha1($password);
                        $result=$this->Users_Model->change_user_password($data_post, $slug);
                
                        if($result == 1)
                        {
                            $data['sucess_message']="User password changed Sucessfully...!";
                        }else{
                            $data['error_message']="Oops something went wrong, Please try again...!";
                        }    
                    }elseif($password != $cpassword){
                            $data['error_message']="Passwords donot match. Please try again...!";
                    }
                    
                    
                
            }
                
        $this->load->view('change_user_password', $data);
    }


}

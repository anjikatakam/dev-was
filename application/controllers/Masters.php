<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Masters extends CI_Controller {

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
            date_default_timezone_set('Asia/Kuala_Lumpur');
            
         @$loginIn=$this->session->userdata['logged_in'];
            if(!@$loginIn){
                header("Location:/login/");
            }
                 
            
    }
     
	public function index()
	{
       @$loginIn=$this->session->userdata['logged_in'];
        $data['title']="Menues - Dashboard";
        $this->load->view('masters', $data);
	}
    
    
    public function region($action=NULL, $slug=NULL){
        @$loginIn=$this->session->userdata['logged_in'];
        $data['title']="Regions - Dashboard";
        $data['get_regions']=$this->Masters_Model->get_regions();
            
            if($slug != '' and $action == 'delete'){
                $result=$this->Masters_Model->delete_regions($slug);            
                
                if($result == 1)
                    {
                        header("location:/masters/region?sucess_message=1");
                    }else{
                        header("location:/masters/region?failure_message=1");
                    }
            }
                            
        $this->load->view('region', $data);
    }
    
    public function add_region(){
        @$loginIn=$this->session->userdata['logged_in'];
        $data['title']="Add Regions - Dashboard";
            
            if($_SERVER['REQUEST_METHOD'] == 'POST'){
                
                $data_post['region']=$this->input->post('region');
                    
                    $result=$this->Masters_Model->create_region($data_post);
                
                    if($result == 1)
                    {
                        $data['sucess_message']="Region Created Sucessfully...!";
                    }else{
                        $data['error_message']="Oops something went wrong, Please try again...!";
                    }

                
            }
                
        $this->load->view('add_region', $data);
    }
    
    public function edit_region($slug){
        @$loginIn=$this->session->userdata['logged_in'];
        $data['get_region_by']=$this->Masters_Model->get_region_id($slug);
        
        $data['title']="Update ".$data['get_region_by'][0]->region."";
            
            if($_SERVER['REQUEST_METHOD'] == 'POST'){
                
                $data_post['region']=$this->input->post('region');
                    
                    $result=$this->Masters_Model->update_regions($data_post, $slug);
                
                    if($result == 1)
                    {
                        $data['sucess_message']="Region Updated Sucessfully...!";
                    }else{
                        $data['error_message']="Oops something went wrong, Please try again...!";
                    }

                
            }
                
        $this->load->view('edit_region', $data);
    }
    
    
    
    public function country($action=NULL, $slug=NULL){
        $data['title']="Country";
        
        @$loginIn=$this->session->userdata['logged_in'];
        $data['get_regions']=$this->Masters_Model->get_regions();
        
        $data['get_countries']="";
        
        if($_SERVER['REQUEST_METHOD'] == 'GET'){
            
            $regionSlug=$this->input->get('slug');
            
            $data['region_details']=$this->Masters_Model->get_region_id($regionSlug);
            $data['get_countries']=$this->Masters_Model->get_countries($data['region_details'][0]->id);
            
        }
        
        if($slug != '' and $action == 'delete'){
                $result=$this->Masters_Model->delete_country($slug);            
                
                if($result == 1)
                    {
                        header("location:/masters/country?sucess_message=1");
                    }else{
                        header("location:/masters/country?failure_message=1");
                    }
            }
            
        
        $this->load->view('country', $data);
        
    }

    
    public function add_country(){
        $data['title']="Add Country";
        
        @$loginIn=$this->session->userdata['logged_in'];
        $data['get_regions']=$this->Masters_Model->get_regions();
        
        if($_SERVER['REQUEST_METHOD'] == 'POST'){
                
                $data_post['regionid']=$this->input->post('id');
                $data_post['country']=ucfirst($this->input->post('country'));
                
                $result=$this->Masters_Model->add_country($data_post);
                
                    if($result == 1)
                    {
                        $data['sucess_message']="Country Created Sucessfully...!";
                    }else{
                        $data['error_message']="Oops something went wrong, Please try again...!";
                    }
            }
                
        $this->load->view('add_country', $data);
        
    }

    public function edit_country($slug){
        
        @$loginIn=$this->session->userdata['logged_in'];
        $data['get_regions']=$this->Masters_Model->get_regions();
        $data['country_details']=$this->Masters_Model->get_country_details($slug);
        
        $data['title']="Update - ".$data['country_details'][0]->country."";
        
        if($_SERVER['REQUEST_METHOD'] == 'POST'){
                
                $data_post['regionid']=$this->input->post('id');
                $data_post['country']=ucfirst($this->input->post('country'));
                
                $result=$this->Masters_Model->update_country($data_post, $slug);
                
                    if($result == 1)
                    {
                        $data['sucess_message']="Country Created Sucessfully...!";
                    }else{
                        $data['error_message']="Oops something went wrong, Please try again...!";
                    }
            }
                
        $this->load->view('edit_country', $data);
        
    }
    public function acoating(){
		$data['title']="Ac Coating";
        @$loginIn=$this->session->userdata['logged_in'];
        $data['acoating']=$this->Masters_Model->get_acoatings();   
        $this->load->view('acoating_view', $data);
	}

}

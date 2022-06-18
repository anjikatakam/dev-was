<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Engineering extends CI_Controller {
    public function __construct() 
    {
            parent::__construct();
            // Load session library
            $this->load->library('session');
            $this->load->helper('url');
            // Load Masters Model
            $this->load->model('Masters_Model');
            // Load Masters Model
            $this->load->model('Users_Model');
            // Load Masters Model
            $this->load->model('Projects_Model');
            date_default_timezone_set('Asia/Kuala_Lumpur');
         @$loginIn=$this->session->userdata['logged_in'];
            if(!@$loginIn){
                header("Location:/login/");
            }
                    
    }
     
    public function index(){
        $data['title']="Projects";
        
            @$loginIn=$this->session->userdata['logged_in'];
            $data['get_projects']=$this->Projects_Model->get_projects();
        
        $this->load->view('eng_view', $data);
        
    }
    public function add_project(){
		$data['get_priority']=$this->Masters_Model->get_priority();
        $data['get_project_status']=$this->Masters_Model->get_project_status();
		$data['get_bidding_stage']=$this->Masters_Model->get_bidding_stage();
		$data['get_buyer']=$this->Masters_Model->get_buyer();
		$data['get_country']=$this->Masters_Model->get_country();
		$data['get_year']=$this->Masters_Model->get_year();
	    $data['get_bidding_stage']=$this->Masters_Model->get_bidding_stage();
		$data['sales_lead']=$this->Masters_Model->get_sales_lead();
        $this->load->view('addengproject_view',$data);  
    }
	public function sbmt_eng_project(){
		//echo "<pre>";print_r($_POST);exit;
	  $project_name=$this->input->post("project_name");
	  $project_description=$this->input->post("project_desc");
	  $priority=$this->input->post("priority");
	  $bid_no=$this->input->post("bid_no");
	  $product=$this->input->post("product");
	  $country=$this->input->post("country");
	  $region=$this->input->post("region");
	  $operator=$this->input->post("operator");
	  $project_status=$this->input->post("project_status");
	  $bidding_stage=$this->input->post("bidding_stage");
	  $epic=$this->input->post("epic");
	  $oem=$this->input->post("oem");
	  $sales_lead=$this->input->post("sales_lead");
	  $contract_award_year=$this->input->post("contract_award_year");
	  $qtr=$this->input->post("qtr");
	  $schedule=$this->input->post("schedule");
	  $price=$this->input->post("price");
	  $comment=$this->input->post("comment");
	  $action=$this->input->post("action");
	  $action_update=$this->input->post("action_update");
	  $eng_project_arr=array(
		"project_name"=>$project_name,
		"project_description"=>$project_description,
		"priority"=>$priority,
		"bid_no"=>$bid_no,
		"product"=>$product,
		"country"=>$country,
		"region"=>$region,
		"operator"=>$operator,
		"project_status"=>$project_status,
		"bidding_stage"=>$bidding_stage,
		"epic"=>$epic,
		"oem"=>$oem,
		"sales_lead"=>$sales_lead,
		"contract_award"=>$contract_award_year,
		"qtr"=>$qtr,
		"schedule"=>$schedule,
		"price"=>$price,
		"general_comments"=>$comment,
		"action"=>$action,
		"action_update"=>$action_update
		);
		//echo "<pre>";print_r($eng_project_arr);exit;
		$this->Projects_Model->insertEngProject($eng_project_arr);
	}

    
    
   
    
}

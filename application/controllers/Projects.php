<?php 
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);

defined('BASEPATH') OR exit('No direct script access allowed');

class Projects extends CI_Controller {

    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     *      http://example.com/index.php/welcome
     *  - or -
     *      http://example.com/index.php/welcome/index
     *  - or -
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
        
        $this->load->view('projects', $data);
        
    }
    
    

    public function add_project(){
			//echo "<pre>";print_r($_POST);exit;
        $data['title']="Add Pipeline Projects";
        
        @$loginIn=$this->session->userdata['logged_in'];
        
        $data['get_ac_coating']=$this->Masters_Model->get_ac_coating();
        $data['get_bidding_stage']=$this->Masters_Model->get_bidding_stage();
        $data['get_buyer']=$this->Masters_Model->get_buyer();
        $data['get_country']=$this->Masters_Model->get_country();
        $data['get_cwc']=$this->Masters_Model->get_cwc();
        $data['get_insulation']=$this->Masters_Model->get_insulation();
        $data['get_internal_lining']=$this->Masters_Model->get_internal_lining();
        $data['get_period']=$this->Masters_Model->get_period();
        $data['get_pipesize']=$this->Masters_Model->get_pipesize();
        $data['get_pipe_material']=$this->Masters_Model->get_pipe_material();
        $data['get_pipe_type']=$this->Masters_Model->get_pipe_type();
        $data['get_preferred_facility']=$this->Masters_Model->get_preferred_facility();
        $data['get_priority']=$this->Masters_Model->get_priority();
        $data['get_project_status']=$this->Masters_Model->get_project_status();
        $data['get_regions']=$this->Masters_Model->get_regions();
        $data['get_year']=$this->Masters_Model->get_year();
        
            if($_SERVER['REQUEST_METHOD'] == 'POST'){
                //Project Details
                $data_project_details['userid']=$loginIn['userid'];
                $data_project_details['project_type']="pipeline";
                $data_project_details['project_name']=trim(stripcslashes($this->input->post('project_name')));
                $data_project_details['region']=trim(stripcslashes($this->input->post('region')));
                $data_project_details['country']=trim(stripcslashes($this->input->post('country')));
                $data_project_details['priority']=trim(stripcslashes($this->input->post('priority')));
                $data_project_details['operator']=trim(stripcslashes($this->input->post('operator')));
                $data_project_details['project_status']=trim(stripcslashes($this->input->post('project_status')));
                $data_project_details['epci_installer']=trim(stripcslashes($this->input->post('epci_installer')));
                $data_project_details['pipe_supplier']=trim(stripcslashes($this->input->post('pipe_supplier')));
                $data_project_details['trading_house']=trim(stripcslashes($this->input->post('trading_house')));
                $data_project_details['buyer']=trim(stripcslashes($this->input->post('buyer')));
                $data_project_details['date']=date("Y-m-d");
                $data_project_details['regDate']=date("Y-m-d H:i:s");
                $data_project_details['status'] = 1;
                $data_project_details['slug'] ='';
                //$data_project_details['description'] ='';
                $data_project_details['description'] =trim(stripcslashes($this->input->post('description')));

                    $lastId=$this->Projects_Model->create_project_details($data_project_details);
                    //echo "<pre>";print_r($lastId);exit;
                if($lastId != ''){
                        //Contract Details
                        $data_project_contract_details['project_id']=$lastId;
                        $data_project_contract_details['year']=trim(stripcslashes($this->input->post('contract_year')));
                        $data_project_contract_details['period']=trim(stripcslashes($this->input->post('contract_period')));
                        $data_project_contract_details['regDate']=date("Y-m-d H:i:s");
                            
                            $result_contract_details=$this->Projects_Model->create_contract_details($data_project_contract_details);
                            
                        //Execution Period details
                        $data_project_execution_period['project_id']=$lastId;
                        $data_project_execution_period['e_year']=trim(stripcslashes($this->input->post('execuation_year')));
                        $data_project_execution_period['e_period']=trim(stripcslashes($this->input->post('execuation_period')));
                        $data_project_execution_period['duration_month']=trim(stripcslashes($this->input->post('execuation_duration')));
                        $data_project_execution_period['regDate']=date("Y-m-d H:i:s");
                            
                            $result_execution_period=$this->Projects_Model->create_execution_period($data_project_execution_period);
                            
                        //Budget and Facalities
                        $data_project_budget_facilites['project_id']=$lastId;
                        $data_project_budget_facilites['project_value']=trim(stripcslashes($this->input->post('project_value')));
                        $data_project_budget_facilites['bid_stage']=trim(stripcslashes($this->input->post('bid_stage')));
                        $data_project_budget_facilites['execution_facility']=trim(stripcslashes($this->input->post('facilities')));
                        $data_project_budget_facilites['budget_holder']=trim(stripcslashes($this->input->post('budget_holder')));
                        $data_project_budget_facilites['regDate']=date("Y-m-d H:i:s");
 
                            $result_budget_facilities=$this->Projects_Model->create_budget_facilities($data_project_budget_facilites);
                        
                        //Pipesize and Material
                        /*
                        $data_project_pipesize_material['project_id']=$lastId;
                        $data_project_pipesize_material['pipe_size']=trim(stripcslashes($this->input->post('pipe_size')));
                        $data_project_pipesize_material['length']=trim(stripcslashes($this->input->post('length')));
                        $data_project_pipesize_material['pipe_type']=trim(stripcslashes($this->input->post('pipe_type')));
                        $data_project_pipesize_material['pipe_material']=trim(stripcslashes($this->input->post('pipe_material')));
                        $data_project_pipesize_material['coating_internal_lining']=trim(stripcslashes($this->input->post('coating_internal_lining')));
                        $data_project_pipesize_material['coating_anti_corrision']=trim(stripcslashes($this->input->post('coating_anti_corrision')));
                        $data_project_pipesize_material['coating_insulation']=trim(stripcslashes($this->input->post('coating_insulation')));
                        $data_project_pipesize_material['coating_concrete']=trim(stripcslashes($this->input->post('coating_concrete')));
                        $data_project_pipesize_material['regDate']=date("Y-m-d H:i:s");
                            
                            if($data_project_pipesize_material['pipe_size'] != ''){
                                $result_pipesize_material=$this->Projects_Model->create_pipesize_material($data_project_pipesize_material);
                            }
                         */

                        /**
                         *
                         */
                          $pipe_coating_details = $this->input->post('pipe_coating_details');
                          // echo "<pre>";print_r($_POST);exit;
                          if(!empty($pipe_coating_details)) {
                              foreach($pipe_coating_details as $pcKey => $pcValue) {
                                  $pipe_coating_details[$pcKey]['project_id']=$lastId;
                                  $pipe_coating_details[$pcKey]['regDate']=date("Y-m-d H:i:s");
                              }

                              $result_pipesize_material = $this->Projects_Model->create_pipesize_material($pipe_coating_details);
                          }

                        //Project Comments
                        $data_project_comments['project_id']=$lastId;
                        $data_project_comments['notes']=trim(stripcslashes($this->input->post('notes')));
                        $data_project_comments['updated_userid']=$loginIn['userid'];
                        $data_project_comments['regDate']=date("Y-m-d H:i:s");
                            if($data_project_comments['notes'] != ''){
                                $result_comments=$this->Projects_Model->create_comments($data_project_comments);
                            }
                            
                        //Project Actions
                        $data_project_actions['project_id']=$lastId;
                        $data_project_actions['actions']=trim(stripcslashes($this->input->post('actions')));
                        $data_project_actions['action_update']=trim(stripcslashes($this->input->post('action_update')));
                        $data_project_actions['updated_userid']=$loginIn['userid'];
                        $data_project_actions['regDate']=date("Y-m-d H:i:s");
                        
                            if($data_project_actions['actions'] != ''){
                                $result_actions=$this->Projects_Model->create_actions($data_project_actions);
                            }
                }
                
                if($result_budget_facilities == 1 and $result_contract_details == 1 and $result_execution_period ==1){
                     $data['sucess_message']="Project Created Sucessfully...!";
                    }else{
                        $data['error_message']="Oops something went wrong, Please try again...!";
                }
            }
            
        
        $this->load->view('add_projects', $data);
    } 
    
    
    
    public function edit_project($slug){
        $data['title']="Edit Projects";
        
        @$loginIn=$this->session->userdata['logged_in'];
        
        $data['get_ac_coating']=$this->Masters_Model->get_ac_coating();
        $data['get_bidding_stage']=$this->Masters_Model->get_bidding_stage();
        $data['get_buyer']=$this->Masters_Model->get_buyer();
        $data['get_country']=$this->Masters_Model->get_country();
        $data['get_cwc']=$this->Masters_Model->get_cwc();
        $data['get_insulation']=$this->Masters_Model->get_insulation();
        $data['get_internal_lining']=$this->Masters_Model->get_internal_lining();
        $data['get_period']=$this->Masters_Model->get_period();
        $data['get_pipesize']=$this->Masters_Model->get_pipesize();
        $data['get_pipe_material']=$this->Masters_Model->get_pipe_material();
        $data['get_pipe_type']=$this->Masters_Model->get_pipe_type();
        $data['get_preferred_facility']=$this->Masters_Model->get_preferred_facility();
        $data['get_priority']=$this->Masters_Model->get_priority();
        $data['get_project_status']=$this->Masters_Model->get_project_status();
        $data['get_regions']=$this->Masters_Model->get_regions();
        $data['get_year']=$this->Masters_Model->get_year();
        
        //get project ID from slug
        $data['get_project_slug']=$this->Projects_Model->get_project_slug($slug);
        //get the ovel all project details
        $data['get_project_details']=$this->Projects_Model->get_project_details($slug);
        //get the pipe & material details
        $data['get_pipe_details']=$this->Projects_Model->get_pipe_details($data['get_project_slug'][0]->id);

    $data['get_project_comments']=$this->Projects_Model->get_project_comments($data['get_project_slug'][0]->id);
	$data['get_comments']=$this->Projects_Model->get_comments($data['get_project_slug'][0]->id);
        $data['get_project_actions']=$this->Projects_Model->get_project_actions($data['get_project_slug'][0]->id);    

        if($_SERVER['REQUEST_METHOD'] == 'POST'){
			echo "<pre>";print_r($_POST);exit;
                //Project Details
                $data_project_details['userid']=$loginIn['userid'];
                $data_project_details['project_type']="pipeline";
                $data_project_details['project_name']=trim(stripcslashes($this->input->post('project_name')));
                $data_project_details['region']=trim(stripcslashes($this->input->post('region')));
                $data_project_details['country']=trim(stripcslashes($this->input->post('country')));
                $data_project_details['priority']=trim(stripcslashes($this->input->post('priority')));
                $data_project_details['operator']=trim(stripcslashes($this->input->post('operator')));
                $data_project_details['project_status']=trim(stripcslashes($this->input->post('project_status')));
                $data_project_details['epci_installer']=trim(stripcslashes($this->input->post('epci_installer')));
                $data_project_details['pipe_supplier']=trim(stripcslashes($this->input->post('pipe_supplier')));
                $data_project_details['trading_house']=trim(stripcslashes($this->input->post('trading_house')));
                $data_project_details['buyer']=trim(stripcslashes($this->input->post('buyer')));
                $data_project_details['date']=date("Y-m-d");
                $data_project_details['updateDate']=date("Y-m-d H:i:s");
                $data_project_details['description'] =trim(stripcslashes($this->input->post('description')));
        
                    $result_project_details=$this->Projects_Model->update_project_details($data_project_details, $data['get_project_slug'][0]->id);
                
                        //Contract Details
                        $data_project_contract_details['year']=trim(stripcslashes($this->input->post('contract_year')));
                        $data_project_contract_details['period']=trim(stripcslashes($this->input->post('contract_period')));
                        $data_project_contract_details['updateDate']=date("Y-m-d H:i:s");
                            
                            $result_contract_details=$this->Projects_Model->update_contract_details($data_project_contract_details, $data['get_project_slug'][0]->id);
                            
                        //Execution Period details
                        $data_project_execution_period['e_year']=trim(stripcslashes($this->input->post('execuation_year')));
                        $data_project_execution_period['e_period']=trim(stripcslashes($this->input->post('execuation_period')));
                        $data_project_execution_period['duration_month']=trim(stripcslashes($this->input->post('execuation_duration')));
                        $data_project_execution_period['updateDate']=date("Y-m-d H:i:s");
                            
                            $result_execution_period=$this->Projects_Model->update_execution_period($data_project_execution_period, $data['get_project_slug'][0]->id);
                            
                        //Budget and Facalities
                        $data_project_budget_facilites['project_value']=trim(stripcslashes($this->input->post('project_value')));
                        $data_project_budget_facilites['bid_stage']=trim(stripcslashes($this->input->post('bid_stage')));
                        $data_project_budget_facilites['execution_facility']=trim(stripcslashes($this->input->post('facilities')));
                        $data_project_budget_facilites['budget_holder']=trim(stripcslashes($this->input->post('budget_holder')));
                        $data_project_budget_facilites['updateDate']=date("Y-m-d H:i:s");
                        
                        //Update multiple pipe details 
                        $pipeid=$_POST['pipeid'];
                        /*$count_pipeid=count($pipeid);
                            
                            for($k=0;$k<$count_pipeid;$k++){
                                $pipeId=trim(stripcslashes($_POST['pipeid'][$k]));
                                $data_pipe_details['pipe_size']=trim(stripcslashes($_POST['pipe_size'][$k]));
                                $data_pipe_details['length']=trim(stripcslashes($_POST['length'][$k]));
                                $data_pipe_details['pipe_type']=trim(stripcslashes($_POST['pipe_type'][$k]));
                                $data_pipe_details['pipe_material']=trim(stripcslashes($_POST['pipe_material'][$k]));
                                $data_pipe_details['coating_internal_lining']=trim(stripcslashes($_POST['coating_internal_lining'][$k]));
                                $data_pipe_details['coating_anti_corrision']=trim(stripcslashes($_POST['coating_anti_corrision'][$k])); 
                                $data_pipe_details['coating_insulation']=trim(stripcslashes($_POST['coating_insulation'][$k])); 
                                $data_pipe_details['coating_concrete']=trim(stripcslashes($_POST['coating_concrete'][$k]));
                                
                                $this->Projects_Model->update_pipe_details($data_pipe_details, $pipeId); 
                            } */

                        $pipe_coating_details = $this->input->post('pipe_coating_details');
                        $this->Projects_Model->update_pipe_details($pipe_coating_details);

            //Project Comments
                        $data_project_comments['project_id']=$data['get_project_slug'][0]->id;
                        $note_id = trim(stripcslashes($this->input->post('note_id')));
                        $data_project_comments['notes']=trim(stripcslashes($this->input->post('notes')));
                        $data_project_comments['updated_userid']=$loginIn['userid'];
                        $data_project_comments['regDate']=date("Y-m-d H:i:s");
            if(!empty($this->input->post('notes'))) {
                            $this->Projects_Model->update_comments($data_project_comments, $note_id);
                        }

                        //Project Actions
                        $data_project_actions['project_id']=$data['get_project_slug'][0]->id;
                        $action_id = trim(stripcslashes($this->input->post('action_id')));
                        $data_project_actions['actions']=trim(stripcslashes($this->input->post('actions')));
                        $data_project_actions['action_update']=trim(stripcslashes($this->input->post('action_update')));
                        $data_project_actions['updated_userid']=$loginIn['userid'];
                        $data_project_actions['regDate']=date("Y-m-d H:i:s");
                        if(!empty($this->input->post('actions')) && !empty($this->input->post('action_update'))) {
                            $this->Projects_Model->update_actions($data_project_actions, $action_id);
                        }
                        
                        $result_budget_facilities=$this->Projects_Model->update_budget_facilities($data_project_budget_facilites, $data['get_project_slug'][0]->id);
                        
                if($result_project_details == 1 and $result_budget_facilities == 1 and $result_contract_details == 1 and $result_execution_period ==1){
                     $data['sucess_message']="Project Updated Sucessfully...!";
                    $this->session->set_flashdata('sucess_message', 'Project Updated Sucessfully...!');
                    redirect(base_url()."projects/edit_project/".$slug);

                }else{
                    $data['error_message']="Oops something went wrong, Please try again...!";
                    $this->session->set_flashdata('error_message', 'Oops something went wrong, Please try again...!');
                    redirect(base_url()."projects/edit_project/".$slug);
                }
            }

        $this->load->view('edit_projects', $data);
    } 
    
    
    public function project_details($slug){
        
        @$loginIn=$this->session->userdata['logged_in'];
        
        $data['get_project_details']=$this->Projects_Model->get_project_details($slug);
        $data['get_project_slug']=$this->Projects_Model->get_project_slug($slug);
        $data['get_project_pipes_coating']=$this->Projects_Model->get_pipe_details($data['get_project_slug'][0]->id);
        $data['get_project_comments']=$this->Projects_Model->get_project_comments($data['get_project_slug'][0]->id);
		$data['get_comments']=$this->Projects_Model->get_comments($data['get_project_slug'][0]->id);
        $data['get_project_actions']=$this->Projects_Model->get_project_actions($data['get_project_slug'][0]->id);
        
        $data['title']="".$data['get_project_details'][0]->project_name."";
        
        
        $this->load->view('project_details', $data);
    }
    function getRegion(){
        $rid=$this->input->post("rid");
        echo $this->Projects_Model->getRegion($rid);
        
    }
    function addComment(){
        $pid=$this->input->post("pid");
        $ptype=$this->input->post("ptype");
        $comment=$this->input->post("comment");

        $cmntsArr=array(
            "project_id"=>$pid,
            "comment"=>$comment,
            "project_type"=>$ptype,
            "author"=>"test"
        );
        echo $this->Projects_Model->addComment($cmntsArr);
        }
    
}

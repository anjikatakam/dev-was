<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
defined('BASEPATH') OR exit('No direct script access allowed');

Class Projects_Model extends CI_Model {
    
    function __construct(){
        parent::__construct();
        $this->load->database();
    }
    
    public function create_project_details($data){
        $this->db->insert('projects', $data);
        $lastId=$this->db->insert_id();
    $result=$this->create_slug($lastId, 'projects');
        return $lastId;
    }
    
    public function create_slug($id, $table_name){
        
        $data['slug']=sha1($id);
        $this->db->where('id', $id);
        $result=$this->db->update($table_name, $data);
        
        return $result;
    }
    
    public function create_contract_details($data){
        
        $result=$this->db->insert('project_contract_details', $data);
        
        return $result;

    }

    public function create_execution_period($data){
        
        $result=$this->db->insert('project_execution_period', $data);
        
        return $result;
        
    }
    
    public function create_budget_facilities($data){
        
        $result=$this->db->insert('project_budget_facilities', $data);
        
        return $result;
        
    }
    
    public function create_pipesize_material($data){

        $result=$this->db->insert_batch('project_pipesize_coating', $data);

        return $result;
        
    }
    
    public function create_comments($data){ 
        
        $result=$this->db->insert('project_pipeline_notes', $data);
        
        return $result;
        
    }
    
    public function create_actions($data){
        
        $result=$this->db->insert('project_pipeline_actions', $data);
        
        return $result;
        
    }

    public function update_comments($data, $id){ 

        if(!empty($id)) {
            $this->db->update('project_pipeline_notes', $data, array('id' => $id));   
        } else {
            $this->db->insert('project_pipeline_notes', $data);   
        }
    }

    public function update_actions($data, $id){
        if (!empty($id)) {
            $this->db->update('project_pipeline_actions', $data, array('id' => $id));
        } else {
            $this->db->insert('project_pipeline_actions', $data);
        }
    }

    //Update project details    
    public function update_project_details($data, $id){
        
        $this->db->where('id', $id);
        $result=$this->db->update('projects', $data);
        
        return $result;
    }
    
        
    public function update_contract_details($data, $id){
        
        $this->db->where('project_id', $id);
        $result=$this->db->update('project_contract_details', $data);
        
        return $result;

    }

    public function update_execution_period($data, $id){
        
        $this->db->where('project_id', $id);
        $result=$this->db->update('project_execution_period', $data);
        
        return $result;
        
    }
    
    public function update_budget_facilities($data, $id){
        
        $this->db->where('project_id', $id);
        $result=$this->db->update('project_budget_facilities', $data);
        
        return $result;
        
    }
    
    public function update_pipe_details($data){
        $this->db->update_batch('project_pipesize_coating',$data, 'id');
    }
    
    //Get project details
    public function get_projects(){
        $this->db->select('*');
        $this->db->from('projects');
        $this->db->join('project_budget_facilities', 'project_budget_facilities.project_id = projects.id','left');$this->db->join('project_execution_period', 'project_execution_period.project_id = projects.id','left');
        if($loginIn['level'] == 'pipeline' or $loginIn['level'] == 'engineering'){
            $this->db->where('userid', $loginIn['userid']);
        }
        $this->db->order_by("projects.id","desc");
        $query = $this->db->get();
		//echo $this->db->last_query();exit;
        
        return $query->result();
    }
    
    public function get_project_slug($slug){
        $this->db->where('slug', $slug);
        $query=$this->db->get('projects');
        
        return $query->result();
    }
     
    
    public function get_project_details($slug){
        
        $this->db->select('*');
        $this->db->from('projects');
        $this->db->join('project_contract_details', 'project_contract_details.project_id = projects.id','left');
        $this->db->join('project_execution_period', 'project_execution_period.project_id = project_contract_details.project_id','INNER');
        $this->db->join('project_budget_facilities', 'project_budget_facilities.project_id = project_execution_period.project_id','INNER');
        $this->db->where('projects.slug', $slug); 
        $query = $this->db->get();
        
        return $query->result();
    }

    public function get_pipe_details($id){
        
        $this->db->where('project_id', $id);
        $query=$this->db->get('project_pipesize_coating');
        
        return $query->result();
    }
    
    public function get_project_comments($id){
        
        $this->db->where('project_id', $id);
        $query=$this->db->get('project_pipeline_notes');
        
        return $query->result();
    }
	 public function get_comments($id){
        
        $this->db->where('project_id', $id);
        $query=$this->db->get('comments');
        
        return $query->result();
    }
    
    public function get_project_actions($id){
        
        $this->db->where('project_id', $id);
        $query=$this->db->get('project_pipeline_actions');
        
        return $query->result();
    }
    public function getRegion($id){
        $this->db->select("region");
        $this->db->from("masters_region");
        $this->db->where("id",$id);
        $query=$this->db->get();
        //echo $this->db->last_query();
        foreach ($query->result() as $row){
                echo $row->region;
        }
    }
    public function addComment($cmntsArr){
       
       return $this->db->insert("comments",$cmntsArr);
    }
	public function insertEngProject($eng_project_arr){
        //echo "<pre>"; print_r($eng_project_arr);exit;
		 $this->db->insert("engineering_projects",$eng_project_arr);
	}
    
}
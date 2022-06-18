<?php
defined('BASEPATH') OR exit('No direct script access allowed');

Class Masters_Model extends CI_Model {
    
    function __construct(){
        parent::__construct();
        $this->load->database();
    }
    
    //Regions DB actions
    
    public function get_regions(){
        $this->db->order_by('region', 'asc');
        $query=$this->db->get('masters_region');
        
        return $query->result(); 
    }
    
    public function get_region_id($slug){
        $this->db->where('slug', $slug);
        $query=$this->db->get('masters_region');
        
        return $query->result();
    }
    
     public function create_region($data){
        
        $this->db->insert('masters_region', $data);
        $result=$this->create_slug($this->db->insert_id(), 'masters_region');
        
        return $result;
    }
    
    public function create_slug($id, $table_name){
        $data['slug']=sha1($id);
        $this->db->where('id', $id);
        $result=$this->db->update($table_name, $data);
        
        return $result;
    }
    
    public function update_regions($data, $slug){
        $this->db->where('slug', $slug);
        $result=$this->db->update('masters_region', $data);
        
        return $result;
    }
    
    public function delete_regions($slug){
        $this->db->where('slug', $slug);
        $result=$this->db->delete('masters_region');
        
        return $result;
    }

    //Countries DB actions
    
    public function get_countries($id){
        $this->db->where('regionid', $id);
        $query=$this->db->get('masters_country');
        
        return $query->result();
    }

    public function get_country(){
        $this->db->order_by('country', 'asc');
        $query=$this->db->get('masters_country');
        
        return $query->result();
    }
    
    public function get_country_details($slug){
        $this->db->where('slug', $slug);
        $query=$this->db->get('masters_country');
        
        return $query->result();
    }
	public function get_acoatings(){
        $this->db->select("*");
		$this->db->from("masters_ac_coating");
        $query=$this->db->get();
        return $query->result();
    }
     
    public function add_country($data){
        $this->db->insert('masters_country', $data);
        $result=$this->create_slug($this->db->insert_id(), 'masters_country');
        
        return $result;
        
    }
    
    public function update_country($data, $slug){
        $this->db->where('slug', $slug);
        $result=$this->db->update('masters_country', $data);
        
        return $result;
    }
    
    public function delete_country($slug){
        $this->db->where('slug', $slug);
        $result=$this->db->delete('masters_country');
        
        return $result;
    }
    
    //Anti Corrision DB actions
     
    public function get_ac_coating(){
        $this->db->order_by('ac_coating', 'asc');
        $query=$this->db->get('masters_ac_coating');
        
        return $query->result();
    }
    
    //Bidding Stages DB actions
    
    public function get_bidding_stage(){
        $this->db->order_by('bidding_stage', 'asc');
        $query=$this->db->get('masters_bidding_stage');
        
        return $query->result();
    }
    
    //Buyer DB actions
    
    public function get_buyer(){
        $this->db->order_by('buyer', 'asc');
        $query=$this->db->get('masters_buyer');
        
        return $query->result();
    }
    
    //CWC DB actions
    
    public function get_cwc(){
        $this->db->order_by('cwc', 'asc');
        $query=$this->db->get('masters_cwc');
        
        return $query->result();
    }
    
    //Insulation DB actions
    
    public function get_insulation(){
        $this->db->order_by('insulation', 'asc');
        $query=$this->db->get('masters_insulation');
        
        return $query->result();
    }
    
    //Internal Lining DB actions
    
    public function get_internal_lining(){
        $this->db->order_by('internal_lining', 'asc');
        $query=$this->db->get('masters_internal_lining');
        
        return $query->result();
    }
    
    //Period DB actions
    
    public function get_period(){
        $this->db->order_by('period', 'asc');
        $query=$this->db->get('masters_period');
        
        return $query->result();
    }
    
    //Pipe Size DB actions
    
    public function get_pipesize(){
        $this->db->order_by('pipesize', 'asc');
        $query=$this->db->get('masters_pipesize');
        
        return $query->result();
    }
    
    //Pipe Material DB actions
    
    public function get_pipe_material(){
        $this->db->order_by('material', 'asc');
        $query=$this->db->get('masters_pipe_material');
        
        return $query->result();
    }
    
    //Pipe Type DB actions
    
    public function get_pipe_type(){
        $this->db->order_by('type', 'asc');
        $query=$this->db->get('masters_pipe_type');
        
        return $query->result();
    }
    
    //Preferred Facility DB actions
    
    public function get_preferred_facility(){
        $this->db->order_by('preferred_facility', 'asc');
        $query=$this->db->get('masters_preferred_facility');
        
        return $query->result();
    }
    
    //Priority DB actions
    
    public function get_priority(){
        $this->db->order_by('priority', 'asc');
        $query=$this->db->get('masters_priority');
        
        return $query->result();
    }
    
    //Project Status DB actions
    public function get_project_status(){
        $this->db->order_by('project_status', 'asc');
        $query=$this->db->get('masters_project_status');
        
        return $query->result();
    }

    //Year DB actions
    public function get_year(){
        $this->db->order_by('year', 'asc');
        $query=$this->db->get('masters_year');
        
        return $query->result();
    }
    public function get_sales_lead(){
        $this->db->order_by('id', 'asc');
        $query=$this->db->get('masters_saleslead');
        
        return $query->result();
    }

    
    
}
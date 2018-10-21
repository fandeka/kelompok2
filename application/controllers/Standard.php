<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Standard extends CI_Controller {
    public function __construct()
    {
                parent::__construct();
                // Your own constructor code
                $this->load->database();
                $this->load->helper('login_helper');
    }
 
    public function manage_standard(){
        if(_is_user_login($this)){
             $data["error"] = "";

          $this->load->model("users_model");

          $data["school_data"] = $this->users_model->get_users();

            $this->load->model("standard_model");
            $data["standard"] = $this->standard_model->get_school_standard_by_admin();
   
            if($_POST){
                $this->load->library('form_validation');
                
                $this->form_validation->set_rules('standard_title', 'Nama Standar', 'trim|required');
                $this->form_validation->set_rules('year', 'Tahun Standar', 'trim|required');
                $this->form_validation->set_rules('school_id', 'Id Nama Kelas', 'trim|required');
              
             
                if ($this->form_validation->run() == FALSE) 
        		{
        		  
        			$data["error"] = '<div class="alert alert-warning alert-dismissible" role="alert">
                                  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                  <strong>Warning!</strong> '.$this->form_validation->error_string().'
                                </div>';
                    
        		}else
                {
                     $q = $this->db->query("select * from standard where school_id=".$this->input->post('school_id')." AND standard_title='".$this->input->post('standard_title')."'"." AND year='".$this->input->post('year')."'");
                      $duplicate_check =  $q->row();
                      if(isset($duplicate_check)){
                        $this->session->set_flashdata("message", '<div class="alert alert-success alert-dismissible" role="alert">
                                          <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                          <strong>Warning!</strong> Standar sudah tersedia.Silahkan masukkan nama lainnya.
                                        </div>');
                      }
                      else{
                        
                        $standard_title = $this->input->post("standard_title");
                        $year = $this->input->post("year");
                        $school_id = $this->input->post("school_id");
                            $this->load->model("common_model");
                            $this->common_model->data_insert("standard",
                            array("standard_title"=>$standard_title,
                                    "year"=>$year,
                                   "school_id"=>$school_id));
                            
                            $this->session->set_flashdata("message", '<div class="alert alert-success alert-dismissible" role="alert">
                                  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                  <strong>Success!</strong> 
                                </div>');
                                redirect("standard/manage_standard");
                    }       
                }
            }

            $this->load->view("standard/manage_standard",$data);
        }
    }
    public function edit_standard($standard_id){
        if(_is_user_login($this)){
            $data = array();
            $this->load->model("standard_model");
            $standard = $this->standard_model->get_school_standard_by_id($standard_id);
            $data["standard"] = $standard;
            if($_POST){
                $this->load->library('form_validation');
                $this->form_validation->set_rules('standard_title', 'Standard Name', 'trim|required');
              
                if ($this->form_validation->run() == FALSE) 
        		{
        		  
        			$data["error"] = '<div class="alert alert-warning alert-dismissible" role="alert">
                                  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                  <strong>Warning!</strong> '.$this->form_validation->error_string().'
                                </div>';
                    
        		}else
                {
                     $q = $this->db->query("select * from standard where school_id="._get_current_user_id($this)." AND standard_title='".$this->input->post('standard_title')."'");
                      $duplicate_check =  $q->row();
                      if(isset($duplicate_check)){
                        $this->session->set_flashdata("message", '<div class="alert alert-warning alert-dismissible" role="alert">
                                          <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                          <strong>Warning!</strong> Standar sudah tersedia, silahkan masukan nama lainnya.
                                        </div>');
                      }
                      else{
                        
                        $standard_title = $this->input->post("standard_title");
                
                        $update_array = array(
                                 "standard_title"=>$standard_title,
                                );
                            $this->load->model("common_model");
                            $this->common_model->data_update("standard",$update_array,array("standard_id"=>$standard_id)
                                );
                            $this->session->set_flashdata("message", '<div class="alert alert-success alert-dismissible" role="alert">
                                  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                  <strong>Success!</strong> Standard Update Successfully
                                </div>');
                                redirect("standard/manage_standard");
                 }       
                }
            }
            
            
            $this->load->view("standard/edit_standard",$data);
        }
    }
    function delete_standard($standard_id){
                $this->db->query("Delete from standard where standard_id = '".$standard_id."'");
                redirect("standard/manage_standard");
    
    }
   
 
  
}
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Exam extends CI_Controller {
    public function __construct()
    {
                parent::__construct();
                // Your own constructor code
                $this->load->database();
                $this->load->helper('login_helper');
    }
 
    public function manage_exam(){
        if(_is_user_login($this)){
             $data["error"] = "";
            $this->load->model("exam_model");
            $data["exam"] = $this->exam_model->get_school_exam();
          
          $this->load->model("standard_model");
          $data["school_standard"] = $this->standard_model->get_school_standard();
            if($_POST){
                $this->load->library('form_validation');
                
              $this->form_validation->set_rules('exam_title', 'Exam Title', 'trim|required');
              $this->form_validation->set_rules('exam_description', 'Exam Description', 'trim|required');
              $this->form_validation->set_rules('start_date', 'Exam Date', 'trim|required');
              
                if ($this->form_validation->run() == FALSE) 
        		{
        		  
        			$data["error"] = '<div class="alert alert-warning alert-dismissible" role="alert">
                                  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                  <strong>Warning!</strong> '.$this->form_validation->error_string().'
                                </div>';
                    
        		}else
                {
                    
                           $exam_title = $this->input->post("exam_title");
                           $exam_description = $this->input->post("exam_description");
                           $exam_date = $this->input->post("start_date");
                           $standard = $this->input->post("standard");
                           
                            $this->load->model("common_model");
                            $this->common_model->data_insert("exam",
                            array("exam_title"=>$exam_title, "school_id"=>_get_current_user_id($this), 
                                  "exam_note"=>$exam_description,"exam_date"=>$exam_date,
                                  "exam_standard"=>$standard
                                  ));
                            $this->session->set_flashdata("message", '<div class="alert alert-success alert-dismissible" role="alert">
                                  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                  <strong>Success!</strong> Exam Added Successfully
                                </div>');
                                redirect("exam/manage_exam");
                       
                }
            }
            
            $this->load->view("exam/manage_exam",$data);
        }
    }
    public function edit_exam($exam_id){
        if(_is_user_login($this)){
            $data = array();
            $this->load->model("exam_model");
            $examid = $this->exam_model->get_school_exam_by_id($exam_id);
            $data["exam"] = $examid;
            
            $this->load->model("standard_model");
          $data["school_standard"] = $this->standard_model->get_school_standard();
            if($_POST){
                $this->load->library('form_validation');
                
              $this->form_validation->set_rules('exam_title', 'Exam Title', 'trim|required');
              $this->form_validation->set_rules('exam_description', 'Exam Description', 'trim|required');
              $this->form_validation->set_rules('start_date', 'Exam Date', 'trim|required');
              
                if ($this->form_validation->run() == FALSE) 
        		{
        		  
        			$data["error"] = '<div class="alert alert-warning alert-dismissible" role="alert">
                                  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                  <strong>Warning!</strong> '.$this->form_validation->error_string().'
                                </div>';
                    
        		} else{
                        $this->session->set_flashdata("message", '<div class="alert alert-success alert-dismissible" role="alert">
                                          <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                          <strong>Warning!</strong> Standard Already Exist.Please Enter Another Name
                                        </div>');
                       
                      
                        
                        $exam_title = $this->input->post("exam_title");
                           $exam_description = $this->input->post("exam_description");
                           $exam_date = $this->input->post("start_date");
                           $standard = $this->input->post("standard");
                           
                
                        $update_array = array("exam_title"=>$exam_title, "exam_note"=>$exam_description,
                        "exam_date"=>$exam_date, "exam_standard"=>$standard);
                        
                            $this->load->model("common_model");
                            $this->common_model->data_update("exam",$update_array,array("exam_id"=>$exam_id)
                                );
                            $this->session->set_flashdata("message", '<div class="alert alert-success alert-dismissible" role="alert">
                                  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                  <strong>Success!</strong> Exam Update Successfully
                                </div>');
                                redirect("exam/manage_exam");
                    
                }
            }
            
            
            $this->load->view("exam/edit_exam",$data);
        }
    }
    function delete_exam($exam_id){
                $this->db->query("Delete from exam where exam_id = '".$exam_id."'");
                redirect("exam/manage_exam");
    
    }


function download_nilai(){
        if(_is_user_login($this)){  
            error_reporting(E_ALL);
            ini_set('display_errors', TRUE);
            ini_set('display_startup_errors', TRUE);
            date_default_timezone_set('Europe/London');
             $this->load->library('PHPExcel');
            if (PHP_SAPI == 'cli')
                die('This example should only be run from a Web Browser');
            // Create new PHPExcel object
            $objPHPExcel = new PHPExcel();
    
            // Set document properties
            $objPHPExcel->getProperties()->setCreator("elearning")
                                         ->setLastModifiedBy("elearning")
                                         ->setTitle("Office 2007 XLSX Test Document")
                                         ->setSubject("Office 2007 XLSX Test Document")
                                         ->setDescription("Daftar Siswa")
                                         ->setKeywords("office 2007 openxml php")
                                         ->setCategory("elearning");
    
            //$objPHPExcel->setActiveSheetIndex(0)->mergeCells('A1:G1');
            // Add some data
            $objPHPExcel->setActiveSheetIndex(0)
                        ->setCellValue('A2', 'No')
                        ->setCellValue('B2', 'Nama Siswa')
                        ->setCellValue('C2', 'Tahun')
                        ->setCellValue('D2', 'Standar')
                        ->setCellValue('E2', 'Tanggal Lahir')
                        ->setCellValue('F2', 'Alamat')
                        ->setCellValue('G2', 'Kota')
                        ->setCellValue('H2', 'No Telp')
                        ->setCellValue('I2', 'Telp Orang Tua')
                        ->setCellValue('J2', 'Pangkat')
                        ->setCellValue('K2', 'Korp')
                        ->setCellValue('L2', 'NRP')
                        ->setCellValue('M2', 'Kesatuan')
                        ->setCellValue('N2', 'Jabatan')
                        ->setCellValue('O2', 'Matra');

            $this->load->model("exam_model");
            $query_judul = $this->exam_model->get_school_exam_order();


             $indexkoe = 'P';
            // // // $damn = 'A';
            // // // $rowin = 2;
             foreach ($query_judul as $query_item ) {
              
            //    // print("<pre>".print_r($query_item->exam_id,true)."</pre>");
            //    // print("<pre>".print_r($query_item->exam_title,true)."</pre>");

                $this->load->model("exam_model");
            //    $query_exam_result = $this->exam_model->get_exam_result_by_exam_id($query_item->exam_id,$query_item->school_id);

            //    // $this->load->model("student_model");
            //    // $query_student = $this->student_model->get_school_student_by_id($query_exam_result->student_id);


               

            //       // print("<pre>".print_r($query_exam_result->total_mark,true)."</pre>"); 
            //    // print("<pre>".print_r($query_student,true)."</pre>");
            //    // print("<pre>".print_r($indexku,true)."</pre>");

            //     $total_mark = @$query_exam_result->total_mark;

            //     if(empty($total_mark)){
            //       $total_mark = 0;
            //     }

            //     // echo $total_mark;
            //     // die();


                $objPHPExcel->setActiveSheetIndex(0)->setCellValue( $indexkoe.'2', $query_item->exam_title);

                      

            //    // $objPHPExcel->setActiveSheetIndex(0)->setCellValue($indexku.'2'.'0', $query_item->exam_titlee);

            //     // $objPHPExcel->setActiveSheetIndex(0)->setCellValue($damn.'2'.'0', $query_student->student_name);





                  $indexkoe++;
            //    // $rowin++;
            //    // $damn++;
               
             }


           
            //   // die();


     
            $q = $this->db->query("select student_detail.*, standard.standard_title, standard.year from student_detail 
                                                                            inner join standard on standard.standard_id = student_detail.student_standard order by student_detail.student_id");
                                                                            $stud_item = $q->result();


                                                                           
            
               
            

                $this->load->model("examresult_model");
                $row_index = 3;
                foreach($stud_item as $item){



                    $objPHPExcel->setActiveSheetIndex(0)->setCellValue('A'.$row_index, $item->student_id)
                                                                    ->setCellValue('B'.$row_index, $item->student_name)
                                                                    ->setCellValue('C'.$row_index, $item->year)
                                                                    ->setCellValue('D'.$row_index, $item->standard_title)
                                                                    ->setCellValue('E'.$row_index, $item->student_birthdate)
                                                                    ->setCellValue('F'.$row_index, $item->student_address)
                                                                    ->setCellValue('G'.$row_index, $item->student_city)
                                                                    ->setCellValue('H'.$row_index, $item->student_phone)
                                                                    ->setCellValue('I'.$row_index, $item->student_parent_phone)
                                                                    ->setCellValue('J'.$row_index, $item->pangkat)
                                                                    ->setCellValue('K'.$row_index, $item->korp)
                                                                    ->setCellValue('L'.$row_index, $item->nrp)
                                                                    ->setCellValue('M'.$row_index, $item->kesatuan)
                                                                    ->setCellValue('N'.$row_index, $item->jabatan)
                                                                    ->setCellValue('O'.$row_index, $item->matra);






                          $student_id = intval($item->student_id);


                          $indexku = 'P';

                          $query_student = $this->examresult_model->get_exam_result($student_id);
                          if(!empty($query_student)){

                                foreach ($query_student as $exam_student) {

                                  $subjek = @$exam_student->subject;

                                  $total_mark = @$exam_student->total_mark;

                                 if(empty($total_mark)){
                                   $total_mark = 0;
                                  }
                                  if(empty($subjek)){
                                   $subjek = 'Subjek';
                                  }
                                  $objPHPExcel->setActiveSheetIndex(0)->setCellValue( $indexku.$row_index, @$total_mark);

                                  $indexku++;
                                  $rowin=$indexku++;
                                
                                }


                          }

                                                                    
                      $row_index++;
                    }

                                                       
    
                    $objPHPExcel->setActiveSheetIndex(0)->getStyle('A2:'.$rowin."2")->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
                    $objPHPExcel->getActiveSheet()->getStyle('A2:'.$rowin."2")->getFill()->setFillType(PHPExcel_Style_Fill::FILL_SOLID)->getStartColor()->setARGB('E5E5E5');
    
                    // for($i = 1 ; $i <= $row_index ; $i++){
                    //     for($j = 'A' ; $j <= 'O' ; $j++){
                    //             $objPHPExcel->getActiveSheet()->getStyle($j.$i)->getBorders()->getTop()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
                    //             $objPHPExcel->getActiveSheet()->getStyle($j.$i)->getBorders()->getBottom()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
                    //             $objPHPExcel->getActiveSheet()->getStyle($j.$i)->getBorders()->getLeft()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
                    //             $objPHPExcel->getActiveSheet()->getStyle($j.$i)->getBorders()->getRight()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
                    //         }
                    //  }
    
                        // Rename worksheet
                    $objPHPExcel->getActiveSheet()->setTitle('Data Siswa');
    
    
                    // Set active sheet index to the first sheet, so Excel opens this as the first sheet
                    $objPHPExcel->setActiveSheetIndex(0);
    
    
                    // Redirect output to a client�s web browser (Excel2007)
                    header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
                    header('Content-Disposition: attachment;filename="DataSiswa.xlsx"');
                    header('Cache-Control: max-age=0');
                    // If you're serving to IE 9, then the following may be needed
                    header('Cache-Control: max-age=1');
    
                    // If you're serving to IE over SSL, then the following may be needed
                    header ('Expires: Mon, 26 Jul 1997 05:00:00 GMT'); // Date in the past
                    header ('Last-Modified: '.gmdate('D, d M Y H:i:s').' GMT'); // always modified
                    header ('Cache-Control: cache, must-revalidate'); // HTTP/1.1
                    header ('Pragma: public'); // HTTP/1.0
    
                    $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
                    $objWriter->save('php://output');
                    exit;            
                }
    }
   
}

?>
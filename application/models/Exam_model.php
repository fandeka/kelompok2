<?php
class Exam_model extends CI_Model{
   
    public function get_school_exam(){
            $q = $this->db->query("select exam.*,standard.standard_title from exam
            inner join standard on standard.standard_id = exam.exam_standard
             where exam.school_id="._get_current_user_id($this));
            return $q->result();
    }
          public function get_school_exam_by_id($id){
        $q = $this->db->query("select * from exam where  exam_id = '".$id."' limit 1");
        return $q->row();
    }
    
    
 public function get_school_exam_by_id_manage_result($id){
        $q = $this->db->query("select exam.*,standard.standard_title from exam 
        inner join standard on standard.standard_id = exam.exam_standard
         where  exam_id = '".$id."' limit 1");
        return $q->row();
    }
    
// public function get_exam_result_by_exam_id($id){
//         $q = $this->db->query("select DISTINCT 
//             exam_result.subject ,
//             exam_result.student_id, 
//             AVG(total_mark) as rata 
//             from exam_result inner join student_detail 
//             on student_detail.student_id = exam_result.student_id
//             where exam_id = '".$id."'");
//         return $q->row();
//     }

function get_exam_result_by_exam_id($id,$school_id){
        $q = $this->db->query("select  
            exam.exam_title,
            exam_result.student_id,
            exam_result.total_mark
            from exam INNER JOIN exam_result
            on exam.exam_id = exam_result.exam_id
            where exam.exam_id = '".$id."' and exam.school_id='".$school_id."'");
        return $q->row();
    }


  public function get_school_exam_order(){
            $q = $this->db->query("select exam.*,standard.standard_title from exam
            inner join standard on standard.standard_id = exam.exam_standard
             where exam.school_id="._get_current_user_id($this)." order by exam.exam_id asc");
            return $q->result();
    }

}
?>

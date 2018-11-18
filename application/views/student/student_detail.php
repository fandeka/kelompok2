<!DOCTYPE html>
<html>
 <?php  $this->load->view("common/common_head"); ?>
       <style>
     @media print{
        .non-print{
            display: none;
        }
     }
    
     
     </style> 
  <body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">

      <?php  $this->load->view("admin/common/common_header"); ?>
      <!-- Left side column. contains the logo and sidebar -->
      <?php  $this->load->view("admin/common/common_sidebar"); ?>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header non-print">
          <h1>
            Siswa 
           
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Siswa</a></li>
            
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
         <div class="row">
        <div class="pull-right">
         <input type="button" value="Print" onclick="window.print()" class="btn btn-primary non-print" />
        </div>
		<div class="col-sm-12 col-md-12 col-xs-12 user-details">
        
            <div class="box">
            <strong>
                       <?php 
                            echo $this->session->flashdata("message");
                               ?>
                                <? if(isset($error)){
                            echo $error;
                        } ?>
            </strong>
            <br/>
            <br/>
            
            <?php
                $img = base_url("img/default.png");
                if($student_detail->student_photo != ""){
                $img = $this->config->item('base_url').'uploads/studentphoto/'.$student_detail->student_photo; } 
            ?> 
            <div class="user-image">
                <img src="<?php echo $img; ?>" alt="Student Photo" title="Student Photo" class="img-circle" style="height: 150px; width: 150px;">
            </div>
            <div class="user-info-block">
                <div class="user-heading">
                    <h3><?php echo $student_detail->student_name; ?></h3>
                     <strong><br />Pelatihan : <?php echo $student_detail->standard_title; ?></strong>
                </div>
              
                 
                <div class="box-header">
                 <div class="fancy">
                 <strong>Perkembangan Siswa : </strong>
                 
                  <table class="table">
    
                    <tbody>
                    <?php foreach($student_growth as $growth) {?>
                      <tr class="success">
                          
                        <td><?php echo $growth->month; ?></td>
                         
                        <td><?php echo $growth->growth."(".$growth->percentage."%)"; ?></td>
                      </tr>
                       <?php }  ?>
                       <a href="<?php echo site_url("growth/manage_growth/".$student_detail->student_id); ?>" class="non-print"> Tambah Perkembangan</a> 
                     
                    </tbody>
                  </table>
                 
                
            </div>
                <div class="col-md-6 col-sm-6 col-xs-6">
                <h4>Informasi Pribadi</h4>
                  <table class="table">
    
                    <tbody>
                      <tr class="success">
                         <td>Alamat : </td>
                        <td><?php echo $student_detail->student_address; ?></td>
                        
                      </tr>
                       <tr class="success">
                        <td>Kota :</td>
                        <td><?php echo $student_detail->student_city; ?></td>
                      </tr>
                      <tr class="success">
                      <td>Tanggal Lahir :</td>
                        <td><?php echo $student_detail->student_birthdate; ?> (Like: yyyy/mm/dd)</td>
                      </tr>
                     <tr class="success">
                      <td>No Telp:</td>
                        <td><?php echo $student_detail->student_phone; ?> </td>
                      </tr>
                      
                        <tr class="success">
                      <td>No Telp Orang Tua :</td>
                        <td><?php if($student_detail->student_parent_phone!=""){ echo $student_detail->student_parent_phone; } else{ echo "data not available";}?>  </td>
                      </tr>
                      
                       <tr class="success">
                      <td>Email :</td>
                        <td><?php if($student_detail->student_email!=""){ echo $student_detail->student_email; } else{ echo "data not available";}?> </td>
                      </tr>
                    </tbody>
                  </table>
                  <!-- <strong>Note*: Please Update Student Detail to Display All Data</strong> -->
                </div>
                  <div class="col-md-6 col-sm-6 col-xs-6">
                  <h4> &nbsp</h4>
                  <table class="table">
    
                    <tbody>
                    <!--  <tr class="success">
                        <td>Roll No : </td>
                        <td><?php // echo $student_detail->student_roll_no; ?></td>
                        
                      </tr> -->
                        <tr class="success">
                        <td>Pelatihan :</td>
                        <td><?php echo $student_detail->standard_title; ?></td>
                        
                      </tr>
                      <tr class="success">
                        <td>Unique no :</td>
                        <td><?php echo $student_detail->student_unique_no; ?></td>
                        
                      </tr>
                 <!--      <tr class="success">
                        <td>Enrolment No :</td>
                        <td><?php // if($student_detail->student_enr_no!=""){ echo $student_detail->student_enr_no; } else{ echo "data not available";}?></td>
                        
                      </tr> -->
               <!--      <tr class="danger">
                        <td>Branch :</td>
                        <td><?php // if($student_detail->student_branch!=""){ echo $student_detail->student_branch; } else{ echo "data not available";}?></td>
                        
                      </tr> -->
                   <!--    <tr class="info">
                        <td>Semester :</td>
                        <td><?php //if($student_detail->student_semester!=""){ echo $student_detail->student_semester; } else{ echo "data not available";}?></td>
                        
                      </tr> -->
                    <!--   <tr class="danger">
                        <td>Division :</td>
                        <td><?php // if($student_detail->student_division!=""){ echo $student_detail->student_division; } else{ echo "data not available";}?></td>
                        
                      </tr> -->
                     <!--  <tr class="success">
                        <td>Batch :</td>
                        <td><?php // if($student_detail->student_batch!=""){ echo $student_detail->student_batch; } else{ echo "data not available";}?></td>
                        
                      </tr> -->
                      <tr class="success">
                        <td>Pangkat :</td>
                        <td><?php if($student_detail->pangkat!=""){ echo $student_detail->pangkat; } else{ echo "data not available";}?></td>
                        
                      </tr> 
                      <tr class="success">
                        <td>Korp :</td>
                        <td><?php if($student_detail->korp!=""){ echo $student_detail->korp; } else{ echo "data not available";}?></td>
                        
                      </tr> 
                      <tr class="success">
                        <td>NRP :</td>
                        <td><?php if($student_detail->nrp!=""){ echo $student_detail->nrp; } else{ echo "data not available";}?></td>
                        
                      </tr> 
                      <tr class="success">
                        <td>Kesatuan :</td>
                        <td><?php if($student_detail->kesatuan!=""){ echo $student_detail->kesatuan; } else{ echo "data not available";}?></td>
                        
                      </tr> 
                      <tr class="success">
                        <td>Jabatan :</td>
                        <td><?php if($student_detail->jabatan!=""){ echo $student_detail->jabatan; } else{ echo "data not available";}?></td>
                        
                      </tr> 
                      <tr class="success">
                        <td>Matra :</td>
                        <td><?php if($student_detail->matra!=""){ echo $student_detail->matra; } else{ echo "data not available";}?></td>
                        
                      </tr> 
                    </tbody>
                  </table>

                      
                </div>
                </div>
                </div>
            </div>
        </div>
	</div>

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
      
       

      
      <!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
      <div class="control-sidebar-bg"></div>
    </div><!-- ./wrapper -->

    <!-- jQuery 2.1.4 -->
    <script src="<?php echo base_url($this->config->item("theme_admin")."/plugins/jQuery/jQuery-2.1.4.min.js"); ?>"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
    <!-- Bootstrap 3.3.5 -->
    <script src="<?php echo base_url($this->config->item("theme_admin")."/bootstrap/js/bootstrap.min.js"); ?>"></script>
    <!-- DataTables -->
    <script src="<?php echo base_url($this->config->item("theme_admin")."/plugins/datatables/jquery.dataTables.min.js"); ?>"></script>
    <script src="<?php echo base_url($this->config->item("theme_admin")."/plugins/datatables/dataTables.bootstrap.min.js"); ?>"></script>
    <!-- AdminLTE App -->
    <script src="<?php echo base_url($this->config->item("theme_admin")."/dist/js/app.min.js"); ?>"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="<?php echo base_url($this->config->item("theme_admin")."/dist/js/demo.js"); ?>"></script>
  
  </body>
</html>

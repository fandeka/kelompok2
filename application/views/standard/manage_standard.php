<!DOCTYPE html>
<html>
 <?php  $this->load->view("common/common_head"); ?>
  <body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">

      <?php  $this->load->view("admin/common/common_header"); ?>
      <!-- Left side column. contains the logo and sidebar -->
      <?php  $this->load->view("admin/common/common_sidebar"); ?>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Standar
            <small>Kelola Standar</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Standar</a></li>
            <li class="active">Kelola Standar</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
               
                <div class="col-md-12">
                
                <div class="col-md-4">
                    <div class="box">
                        <div class="box-header">
                           <p><strong>Tambah Standar</strong></p>
                        </div>
                        <div class="box-body">
                        
                            <form role="form" action="" method="post">
                              <div class="box-body">
                              <?php 
                                echo $this->session->flashdata("message");
                               ?>
                                <? if(isset($error)){
                            echo $error;
                        } ?>
                                <div class="form-group">
                                    <div class="row">
                                    <div class="col-md-12">
                                        <label for="student_class">id Nama Kelas <span class="red">*</span></label>
                                        <select class="form-control select2" name="school_id" id="school_id" style="width: 100%;">
                                            <?php foreach($school_data as $school){
                                                ?>
                                                <option value="<?php echo $school->user_id; ?>" <?php if(isset($_REQUEST["user_id"]) && $_REQUEST["user_id"]==$school->user_id){echo "selected"; } ?>><?php echo $school->user_class_name; echo " -- "; echo $school->user_name; ?></option>
                                                <?php
                                            } ?>
                                        </select>
                                    </div>
                                   
                                      <div class="col-md-12">
                                        <label for="user_fullname">Nama Standar <span class="red">*</span></label>
                                        <input type="text" class="form-control" id="standard_title" name="standard_title" placeholder="Ex. 1, 2, L.K.G, Android, etc" />
                                    </div>

                                    <div class="col-md-6">
                                        <label for="year">Tahun Standar <span class="red">*</span></label>
                                        <input type="text" class="form-control" id="year" name="year" placeholder="Tahun" data-inputmask="'alias': 'yyyy'" data-mask value="<?php if(isset($_REQUEST["year"])){echo $_REQUEST["year"]; } ?>">
                                    </div>

                                   
                                    
                                    </div>
                                </div>
                             
                              </div><!-- /.box-body -->
            
                              <div class="box-footer">
                                <button type="submit" name="submit" class="btn btn-primary">Submit</button>
                              </div>
                            </form>
                        </div>
                    </div>
                    </div>
                    <div class="col-md-8">
                    <div class="box">
                <div class="box-header">
                <table id="example2" class="table table-bordered table-hover">
                    <thead>
                      <tr>
                        <th>ID</th>
                        <th>Nama Kelas</th>
                        <th>Nama Standar</th>
                        <th>Tahun Standar</th>
                        <th width="80">Aksi</th>
                      </tr>
                    </thead>
                    <tbody>  
                <?php foreach($standard as $standardlist){
                    ?>
                    <tr>
                        <td><?php echo $standardlist->standard_id; ?></td>
                        <td><?php

                        $q = $this->db->query("select * from users where  user_id = '".$standardlist->school_id."' limit 1");
                        
                        $school_name = $q->result();

                        echo $school_name['0']->user_class_name;
         


                         ?></td>
                        <td><?php echo $standardlist->standard_title; ?></td>
                        <td><?php echo $standardlist->year; ?></td>
                        
                        <td>
                            <a href="<?php echo site_url("standard/edit_standard/".$standardlist->standard_id); ?>" class="btn btn-success"><i class="fa fa-edit"></i></a>
                            <a href="<?php echo site_url("standard/delete_standard/".$standardlist->standard_id); ?>" onclick="return confirm('are you sure to delete?')" class="btn btn-danger"><i class="fa fa-remove"></i></a>
                        </td>
                    </tr>
                    <?php
                } ?>
                    </tbody>
                </table>
            </div>
        </div>
                    </div>
                </div>
               
                
            </div>
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
      
      <?php  $this->load->view("admin/common/common_footer"); ?>  

      
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
    <!-- Select2 -->
    <script src="<?php echo base_url($this->config->item("theme_admin")."/plugins/select2/select2.full.min.js"); ?>"></script>
        <!-- InputMask -->
    <script src="<?php echo base_url($this->config->item("theme_admin")."/plugins/input-mask/jquery.inputmask.js"); ?>"></script>
    <script src="<?php echo base_url($this->config->item("theme_admin")."/plugins/input-mask/jquery.inputmask.date.extensions.js"); ?>"></script>
    <script src="<?php echo base_url($this->config->item("theme_admin")."/plugins/input-mask/jquery.inputmask.extensions.js"); ?>"></script>
    <!-- bootstrap time picker -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
    <script src="<?php echo base_url($this->config->item("theme_admin")."/plugins/daterangepicker/daterangepicker.js"); ?>"></script>
   
    <script src="<?php echo base_url($this->config->item("theme_admin")."/plugins/timepicker/bootstrap-timepicker.min.js"); ?>"></script>
    <!-- DataTables -->
    <script src="<?php echo base_url($this->config->item("theme_admin")."/plugins/datatables/jquery.dataTables.min.js"); ?>"></script>
    <script src="<?php echo base_url($this->config->item("theme_admin")."/plugins/datatables/dataTables.bootstrap.min.js"); ?>"></script>
    <!-- AdminLTE App -->
    <script src="<?php echo base_url($this->config->item("theme_admin")."/dist/js/app.min.js"); ?>"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="<?php echo base_url($this->config->item("theme_admin")."/dist/js/demo.js"); ?>"></script>
    <script>
      $(function () {
        
        $('#example2').DataTable({
          "paging": true,
          "lengthChange": false,
          "searching": true,
          "ordering": true,
          "order": [[ 0, "desc" ]],
          "info": true,
          "autoWidth": false
        });

      });
    </script>

    <script>
    $(function(){
       $(".select2").select2();
    });
    </script>
    

    <script>
      $(function () {
        
        $("[data-mask]").inputmask("9999", {
            postValidation: function (buffer, opts) {
                return parseInt(buffer.join('')) <= (new Date()).getFullYear();
            }
        });

      });
    </script>


 
    
  </body>
</html>

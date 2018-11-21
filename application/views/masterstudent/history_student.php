<!DOCTYPE html>
<html>
 <?php  $this->load->view("common/common_head"); ?>
<!-- <link rel="stylesheet" href="<?php // echo base_url($this->config->item("theme_admin")."/datatable/jquery.dataTables.min.css"); ?>"> -->
<link rel="stylesheet" href="<?php echo base_url($this->config->item("theme_admin")."/datatable/buttons.dataTables.min.css"); ?>">

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
            History Siswa
            <small></small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Siswa / Peserta</a></li>
            <li class="active">History</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
         <div class="row">
         <div class="col-md-12">
            <div class="col-md-6">
                <div class="col-md-6">
                 <select class="form-control select2" name="filter" id="standard_type"  onchange="choose_standard_type()" style="width: 100%;">
                                           <option value="">Pilih Standar</option>
                                            <?php foreach($school_standard as $standard){
                                                ?>
                                                <option value="<?php echo $standard->standard_id; ?>" <?php  if(isset($_GET["standard"]) && $_GET["standard"]==$standard->standard_id){ echo "selected"; } ?>><?php echo $standard->standard_title; echo" - ";echo $standard->year; ?></option>
                                                <?php
                                            } ?>
                                        </select>
                </div>
                <div class="col-md-4">
                 <a href="<?php echo site_url("masterstudent/history_student"); ?>" class="btn btn-primary pull-right">Bersihkan Filter</a>
                </div>                       
                                        
            </div>
            
              <div class="col-md-6">
               <!--<div class="col-md-4">
                 <a href="<?php // echo site_url("student/student_excel_download"); ?>" class="btn btn-primary pull-right"><i class="fa fa-download"></i> Unduh Excel</a>
                </div> -->  
                <!-- <div class="col-md-4">
                 
                 <a href="<?php //echo site_url("student/student_print"); ?>" class="btn btn-primary "><i class="fa fa-print"></i> Print</a>
                </div> -->
             <!-- <a href="<?php //echo site_url("student/add_student"); ?>" class="btn btn-primary pull-right">Tambah</a> -->
            </div>
           
         </div>
         
                <div class="col-md-12">
            <div class="box">
           
                <div class="box-header">
                
                <table id="example2" class="example table table-bordered table-hover display">
                    <thead>
                      <tr>
                        <th>No</th> 
                        <th>Nama</th>
                        <th>Pangkat</th>
                        <th>Korp</th>
                        <th>NRP</th>
                        <th>Jabatan</th>
                        <th>Kesatuan</th>
                        <th>Matra</th>
                        <th>Pelatihan</th>
                        <th>Tahun</th>
                        <th>Tanggal Lahir</th>
                        <th>Alamat</th>
                        <th>Kota</th>
                        <th>No telp</th>
                        <th>Aksi</th>
                      </tr>
                    </thead>
                    <tbody>
                <?php $no=1; ?>
                <?php foreach($history_student as $students){

                    ?>
                    <tr>
                    <form method="post">
                       <td><?php echo $no++ ?>
                        <td>
                        <?php echo $students->student_name; ?>
                        </td>
                        <td><?php echo $students->pangkat; ?></td>
                        <td><?php echo $students->korp; ?></td>
                        <td><?php echo $students->nrp; ?></td>
                        <td><?php echo $students->jabatan; ?></td>
                        <td><?php echo $students->kesatuan; ?></td>
                        <td><?php echo $students->matra; ?></td>
                        <td><?php echo $students->standard_title; echo " - "; echo $students->year;?></td>
                        <td><?php echo $students->year; ?></td>
                        <td><?php echo $students->student_birthdate; ?></td>
                        <td><?php echo $students->student_address; ?></td>
                        <td><?php echo $students->student_city; ?></td>
                        <td><?php echo $students->student_phone; ?></td>
                        <td>
                            <a href="<?php echo site_url("student/delete_history_student/".$students->student_id); ?>" onclick="return confirm('are you sure to delete?')" class="btn btn-danger"><i class="fa fa-remove"></i></a>
                        </td>
                        </form>
                    </tr>
                    <?php
                } ?>
                    </tbody>
                </table>
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


     <script src="<?php echo base_url($this->config->item("theme_admin")."/datatable/jquery.dataTables.min.js"); ?>"></script>
     <script src="<?php echo base_url($this->config->item("theme_admin")."/datatable/dataTables.buttons.min.js"); ?>"></script>
     <script src="<?php echo base_url($this->config->item("theme_admin")."/datatable/buttons.flash.min.js"); ?>"></script>
     <script src="<?php echo base_url($this->config->item("theme_admin")."/datatable/jszip.min.js"); ?>"></script>
     <script src="<?php echo base_url($this->config->item("theme_admin")."/datatable/pdfmake.min.js"); ?>"></script>
     <script src="<?php echo base_url($this->config->item("theme_admin")."/datatable/vfs_fonts.js"); ?>"></script>
     <script src="<?php echo base_url($this->config->item("theme_admin")."/datatable/buttons.html5.min.js"); ?>"></script>

     <script src="<?php echo base_url($this->config->item("theme_admin")."/datatable/buttons.print.min.js"); ?>"></script>

     <script>

      $(function (){$('#example2').DataTable({
          "paging": true,
          "lengthChange": true,
          "searching": true,
          "ordering": true,
          "order": [[ 0, "desc" ]],
          "info": true,
          "autoWidth": false,
          "dom": 'Bfrtip',
          "buttons": [{
                          extend: 'excel',
                          className: 'fa fa-download',
                          messageTop: 'Data History Siswa',
                          text: '  Unduh Excel',
                          exportOptions: {
                              modifier: {
                                  page: 'current'
                              },
                              columns: [0,1,2,3,4,5,6,7,8,9,10,11,12,13]
                          }
                      },
                      {
                            extend: 'print',
                            className: 'fa fa-print',
                            text: '  Print',
                            exportOptions: {
                                modifier: {
                                    page: 'current'
                                },
                                columns: [0,1,2,3,4,5,6,8]
                            }

                      }],
          "columnDefs": [
                  {
                      "targets": [ 5,7,9,10,11,12,13],
                      "visible": false,
                      "searchable": false
                  },
              ]
        });

        
        $("body").on("change",".tgl_checkbox",function(){
            var table = $(this).data("table");
            var status = $(this).data("status");
            var id = $(this).data("id");
            var id_field = $(this).data("idfield");
            var bin=0;
                                         if($(this).is(':checked')){
                                            bin = 1;
                                         }
            $.ajax({
              method: "POST",
              url: "<?php echo site_url("masterstudent/change_status"); ?>",
              data: { table: table, status: status, id : id, id_field : id_field, on_off : bin }
            })
              .done(function( msg ) {
                //alert(msg);
              }); 
        });
      });

  

    </script>
    <script>
    $(function(){
       $(".select2").select2();
    });
    </script>
  <script>
function get_url_segment(){
    
var get_array = Array();
var query = window.location.search.substring(1).split("&");

for (var i = 0, max = query.length; i < max; i++)
{
    if (query[i] === "") // check for trailing & with no param
        continue;

    var param = query[i].split("=");
    
    get_array[decodeURIComponent(param[0])] = decodeURIComponent(param[1] || "");
}
return get_array;
}
function choose_standard_type() {
    var url_segment = get_url_segment();
    
    var val = document.getElementById("standard_type").value;
    url_segment.standard = val;
    var join_url =join_url_segment(url_segment);
    window.location = "<?php echo site_url("masterstudent/history_student");?>?"+join_url;
}

function join_url_segment(g_array){
    
     var temp_array = Array();
     var i =0;
    Object.keys(g_array).forEach(function (key) {
        //alert(g_array[key]);
        temp_array[i] = key+"="+g_array[key];
        i++;
    });
    
    return temp_array.join("&");
}

</script> 

  </body>
</html>

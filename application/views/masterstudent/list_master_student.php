<!DOCTYPE html>
<html>
 <?php  $this->load->view("common/common_head"); ?>

<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css">



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
            Siswa / Peserta 
            <small>Kelola</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Siswa / Peserta</a></li>
            <li class="active">Daftar</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
         <div class="row">
         <div class="col-md-12">
            <div class="col-md-6">
                <div class="col-md-6">
                 <select class="form-control select2" name="filter" id="standard_type"  onchange="choose_standard_type()" style="width: 100%;">
                                           <option value="">Pilih Pelatihan</option>
                                            <?php foreach($school_standard as $standard){
                                                ?>
                                                <option value="<?php echo $standard->standard_id; ?>" <?php  if(isset($_GET["standard"]) && $_GET["standard"]==$standard->standard_id){ echo "selected"; } ?>><?php echo $standard->standard_title; echo " - "; echo $standard->year;?></option>
                                                <?php
                                            } ?>
                                        </select>
                </div>
                <div class="col-md-4">
                 <a href="<?php echo site_url("masterstudent/list_master_student"); ?>" class="btn btn-primary pull-right">Bersihkan Filter</a>
                </div>                       
                                        
            </div>
            
              <div class="col-md-6">
               <div class="col-md-4">
<!--                  <a href="<?php  // echo site_url("masterstudent/master_student_excel_download"); ?>" class="btn btn-primary pull-right"><i class="fa fa-download"></i> Unduh Excel</a> -->
                </div>   
                <div class="col-md-4">
                 
<!--                  <a href="<?php //echo site_url("masterstudent/master_student_print"); ?>" class="btn btn-primary "><i class="fa fa-print"></i> Print</a> -->
                </div> 
             <a href="<?php echo site_url("masterstudent/add_master_student"); ?>" class="btn btn-primary pull-right">Tambah</a>
            </div>
           
         </div>
         
                <div class="col-md-12">
            <div class="box">
           
                <div class="box-header">
                
                <table id="table" class="example table table-bordered table-hover display">
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
                        <th>Username</th>
                        <th>Password</th>
                        <th>Status</th>
                        <th>Aksi</th>
                      <th>Salin</th>

                      </tr>
                    </thead>
                    <tbody>
                <?php $no=1; ?>
                <?php foreach($student as $students){
                    ?>
                    <tr>
                    <form method="post">
                       <td><?php echo $no++ ?>
                        <td>
                        <?php echo anchor('masterstudent/master_student_detail/'.$students->student_id, $students->student_name, 'title="Student Detail"'); ?>
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
                        <td><?php echo $students->student_user_name; ?></td>
                        <td><?php echo $password = $students->student_orgpassword; ?></td>
                         <td><input class='tgl tgl-ios tgl_checkbox' data-table="student_detail" data-status="student_status" data-idfield="student_id"  data-id="<?php echo $students->student_id; ?>" id='cb_<?php echo $students->student_id; ?>' type='checkbox' <?php echo ($students->student_status==1)? "checked" : ""; ?> />
    <label class='tgl-btn' for='cb_<?php echo $students->student_id; ?>'></label></td>
                        <td>
                            <a href="<?php echo site_url("masterstudent/edit_master_student/".$students->student_id); ?>" class="btn btn-success"><i class="fa fa-edit"></i></a>
                            <a href="<?php echo site_url("masterstudent/delete_master_student/".$students->student_id); ?>" onclick="return confirm('are you sure to delete?')" class="btn btn-danger"><i class="fa fa-remove"></i></a>
                        </td>
                        <td>
                             <a href="<?php echo site_url("masterstudent/copy_student/".$students->student_id); ?>" class="btn btn-primary"><i class="fa fa-copy"></i></a>
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

<!-- 
     <script src="https://code.jquery.com/jquery-3.3.1.js"></script> -->
     <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
     <script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
     <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.flash.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
     <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
     <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>

     <script>    
    
      $(function (){$('#table').DataTable({
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
                          messageTop: 'Data Master Siswa',
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
                      "targets": [ 5,7,9,10,11,12,13 ],
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
    window.location = "<?php echo site_url("masterstudent/list_master_student");?>?"+join_url;
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

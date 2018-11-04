<!DOCTYPE html>
<html>
  <?php  $this->load->view("common/common_head"); ?>
  <head>
    <style type="text/css" media="print">
      @page { size: landscape; }
      body { font-size: 7pt; }

    </style>

  </head>
  <body onload="window.print();">
    <div class="wrapper">
      <!-- Main content -->
      <section class="invoice">
        <!-- title row -->
        <div class="row">
          <div class="col-xs-12">
            <h2 class="page-header">
              <i class="fa fa-globe"></i> Data Siswa
              <small class="pull-right">Date: <?php echo date('Y-m-d');?></small>
            </h2>
          </div><!-- /.col -->
        </div>
        <!-- info row -->
       
        <!-- Table row -->
        <div class="row">
          <div class="col-xs-12 table-responsive">
            <table id="example2" class="example table table-bordered table-hover display" >
                    <thead>
                      <tr>
                       <th>ID</th> 
                        <th>Nama</th>
                         <th>Standar</th>
                        <th>Tanggal Lahir</th>
                        <th>Alamat</th>
                        <th>Kota</th>
                      <th>Telp</th>
                      <th>Telp Orang Tua</th>
                      <th>Pangkat</th>
                      <th>Korp</th>
                      <th>NRP</th>
                      <th>Kesatuan</th>
                      <th>Jabatan</th>
                      <th>Matra</th>
                      </tr>
                    </thead>
                    <tbody>

                <?php foreach($student as $students){
                    ?>
                    <tr>
                    <form method="post">
                       <td><?php echo $students->student_id; ?>
                        <td>
                        <?php echo $students->student_name; ?>
                        </td>
                        <td><?php echo $students->standard_title; ?>
                      </td>
                        <td><?php echo $students->student_birthdate; ?></td>
                        <td><?php echo $students->student_address; ?></td>
                        <td><?php echo $students->student_city; ?>
                        <td><?php echo $students->student_phone; ?></td>
                        <td><?php echo $students->student_parent_phone; ?></td>
                        <td><?php echo $students->pangkat; ?></td>
                        <td><?php echo $students->korp; ?></td>
                        <td><?php echo $students->nrp; ?></td>
                        <td><?php echo $students->kesatuan; ?></td>
                        <td><?php echo $students->jabatan; ?></td>
                        <td><?php echo $students->matra; ?></td>
                        </form>
                    </tr>
                    <?php
                } ?>
                    </tbody>
                </table>
          </div><!-- /.col -->
        </div><!-- /.row -->


      </section><!-- /.content -->
    </div><!-- ./wrapper -->

    <!-- AdminLTE App -->
   
  </body>
</html>

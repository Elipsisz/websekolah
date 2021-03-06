<?php 
$title = "Data SMA dan SMK Kabupaten Pemalang";
include_once "header.php";
include_once "koneksi.php"; ?>

      <div class="row">
        <div class="col-md-12">
          <div class="panel panel-info panel-dashboard">
            <div class="panel-heading centered">
              <h2 class="panel-title"><strong> - <?php echo $title ?> - </strong></h2>
            </div>
            <div class="panel-body">
              <table class="table table-bordered table-striped table-admin">
              <thead>
                <tr>
                  <th width="5%">No.</th>
                  <th width="20%">Nama Sekolah</th>
                  <th width="10%">NPSN</th>
                  <th width="10%">Status</th>
                  <th width="38%">Alamat</th>
                  <th width="27%">Aksi</th>
                </tr>
              </thead>
              <tbody>
              <?php
                $data = file_get_contents('http://localhost/websekolah/js/ambildata.php');
                $no=1;
                if(json_decode($data,true)){
                  $obj = json_decode($data);
                  foreach($obj->results as $item){
              ?>
              <tr>
                <td><?php echo $no; ?></td>
                <td><?php echo $item->Nama_sekolah; ?></td>
                <td><?php echo $item->NPSN; ?></td>
                <td><?php echo $item->Status; ?></td>
                <td><?php echo $item->Alamat; ?></td>
                <td class="ctr">
                  <div class="btn-group">
                    <a target="_blank" href="detail.php?id=<?php echo $item->Id; ?>" rel="tooltip" data-original-title="Lihat File" data-placement="top" class="btn btn-primary">
                    <i class="fa fa-map-marker"> </i> Detail dan Lokasi</a>&nbsp;
                  </div>
                </td>
              </tr>
              <?php $no++; }}

              else{
                echo "data tidak ada.";
                } ?>
              
              </tbody>
            </table>
            </div>
            </div>
          </div>
        </div>
      </div>
    </div>

<?php include_once "footer.php" ?>
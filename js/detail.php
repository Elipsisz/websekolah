<?php 
$id = $_GET['id'];
include_once "ambil_data.php";
$obj = json_decode($data);
$titles="";
$ids="";
$stts="";
$alm="";
$akt="";
$bos="";
$Jurusan="";
$lat="";
$long="";
foreach($obj->result as $item){
  $titles.=$item->Nama_sekolah;
  $ids.=$item->NPSN;
  $stts.=$item->Status;
  $alm.=$item->Alamat;
  $akt.=$item->Akreditasi;
  $bos.=$item->Status_BOS;
  $Jurusan.=$item->Jurusan;
  $lat.=$item->latitude;
  $long.=$item->longitude;
}

$title = "Detail dan Lokasi : ".$titles;
include_once "header.php"; ?>

<head>


    <script src="https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.0.3/leaflet.js"></script>
    <script src="https://cdn.maptiler.com/mapbox-gl-js/v1.5.1/mapbox-gl.js"></script>
    <script src="https://cdn.maptiler.com/mapbox-gl-leaflet/latest/leaflet-mapbox-gl.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.0.3/leaflet.css" />
    <link rel="stylesheet" href="https://cdn.maptiler.com/mapbox-gl-js/v1.5.1/mapbox-gl.css" />
  
</head>


    </script>
      <div class="row">
      <div class="col-md-5">
          <div class="panel panel-info panel-dashboard">
            <div class="panel-heading centered">
              <h2 class="panel-title"><strong> - Lokasi - </strong></h4>
            </div>
            <div class="panel-body">
              <div id="mapid" style="width:100%;height:380px;"></div>
            </div>
          </div>
        </div>
        <div class="col-md-7">
          <div class="panel panel-info panel-dashboard">
            <div class="panel-heading centered">
              <h2 class="panel-title"><strong> - Detail - </strong></h4>
            </div>
            <div class="panel-body">
             <table class="table">
               <tr>
                 <th>Item</th>
                 <th>Detail</th>
               </tr>
               <tr>
                 <td>Nama Sekolah</td>
                 <td><h4><?php echo $titles ?></h4></td>
               </tr>
               <tr>
                 <td>NPSN</td>
                 <td><h4><?php echo $ids ?></h4></td>
               </tr>
               <tr>
                 <td>Status</td>
                 <td><h4><?php echo $stts ?></h4></td>
               </tr>
               <tr>
                 <td>Alamat</td>
                 <td><h4><?php echo $alm ?></h4></td>
               </tr>
               <tr>
                 <td>Akreditasi</td>
                 <td><h4><?php echo $akt ?></h4></td>
               </tr>
               <tr>
                 <td>Jurusan</td>
                 <td><h4><?php echo $Jurusan ?></h4></td>
               </tr>
               <tr>
                 <td>Status BOS</td>
                 <td><h4><?php echo $bos ?></h4></td>
               </tr>
             </table>
            </div>
            </div>
          </div>
        
<div id="mapid" style="width: 100%; height: 380px;"></div>

<script>

	var mymap = L.map('mapid').setView([<?php echo $lat ?>,<?php echo $long ?>], 13);
    

	L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw', {
		maxZoom: 18,
		attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, ' +
			'Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
		id: 'mapbox/streets-v11',
		tileSize: 512,
		zoomOffset: -1
	}).addTo(mymap);


  var leafletIcon = L.icon({
 iconUrl: 'img/marker.png',
 //shadowUrl: 'leaf-shadow.png',

 iconSize:     [25, 25], // size of the icon
 shadowSize:   [10, 10], // size of the shadow
 iconAnchor:   [10, 10], // point of the icon which will correspond to marker's location
 shadowAnchor: [10, 10], // the same for the shadow
 popupAnchor:  [0, 0] // point from which the popup should open relative to the iconAnchor
});


  var marker = L.marker([<?php echo $lat ?>,<?php echo $long ?>], {icon: leafletIcon})
  .bindPopup("<br><?php echo $titles ?></br> <br><?php echo $alm ?></br>").openPopup().addTo(mymap);

</script>
        


        </div>
      </div>
    </div>
    <?php include_once "footer.php"; ?>
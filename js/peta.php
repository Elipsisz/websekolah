<?php
$title = "Peta Persebaran SMA di Kabupaten Pemalang";
include_once "header.php";
?>
      <div class="row">

        <div class="col-md-12">
          <div class="panel panel-info panel-dashboard centered">
            <div class="panel-heading">
              <h2 class="panel-title"><strong> - SMA - </strong></h2>
            </div>
            <div class="panel-body">
              <div id="map" style="width:100%;height:500px;"></div>


              <head>
 
 
 <script src="https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.0.3/leaflet.js"></script>
 <script src="https://cdn.maptiler.com/mapbox-gl-js/v1.5.1/mapbox-gl.js"></script>
 <script src="https://cdn.maptiler.com/mapbox-gl-leaflet/latest/leaflet-mapbox-gl.js"></script>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.0.3/leaflet.css" />
 <link rel="stylesheet" href="https://cdn.maptiler.com/mapbox-gl-js/v1.5.1/mapbox-gl.css" />

 
</head>




<style>  


#map { height: 100%;
width: 100%;   

}



</style>







<center>

<div id="map"></div>

</center>



<?php
 $link = mysqli_connect("localhost", "root", "", "websekolah");

 /* check connection */
 if (mysqli_connect_errno()) {
     printf("Connect failed: %s\n", mysqli_connect_error());
     exit();
 }
   
$result = mysqli_query($link, "SELECT Nama_sekolah, NPSN, Alamat, latitude, longitude FROM info_sekolah");

if(!$result){
echo mysqli_error($link);
}


$k = -1;
$simpan_id[0] = "a";

while($row = mysqli_fetch_array($result))  
                       {  
                            $Id = $row[0];
                            $NPSN = $row[1];
                            $ALMT = $row[2];
              $latitude = $row[3];
              $longitude = $row[4];
            
              
              $k = $k + 1;
              $simpan_provinsi[$k] = $Id;
              $simpan_NPSN[$k] = $NPSN;
              $simpan_ALMT[$k] = $ALMT;
              $simpan_latitude[$k] = $latitude;
              $simpan_longitude[$k] = $longitude;
 
       
            
           }



?>




<script>
 
      var array_provinsi_PHP_JS = <?php echo json_encode($simpan_provinsi); ?>;
      var array_NPSN_PHP_JS = <?php echo json_encode($simpan_NPSN); ?>;
      var array_ALMT_PHP_JS = <?php echo json_encode($simpan_ALMT); ?>;
     var array_longitude_PHP_JS = <?php echo json_encode($simpan_longitude); ?>;
         var array_latitude_PHP_JS = <?php echo json_encode($simpan_latitude); ?>;
 
 </script>





<script>

   var map = L.map('map').setView([-6.955054615454706, 109.3905258178711], 12);
   var gl = L.mapboxGL({
     attribution: '<a href="https://www.maptiler.com/copyright/" target="_blank">&copy; MapTiler</a> <a href="https://www.openstreetmap.org/copyright" target="_blank">&copy; OpenStreetMap contributors</a>',
     accessToken: 'not-needed',
     style: 'https://api.maptiler.com/maps/streets/style.json?key=1h7e1Z9S76PGy92uF3c5'
   }).addTo(map);
 
 
 


 var leafletIcon = L.icon({
 iconUrl: 'http://statkomat.com/pin.png',
 //shadowUrl: 'leaf-shadow.png',

 iconSize:     [17, 17], // size of the icon
 shadowSize:   [10, 10], // size of the shadow
 iconAnchor:   [10, 10], // point of the icon which will correspond to marker's location
 shadowAnchor: [10, 10], // the same for the shadow
 popupAnchor:  [0, 0] // point from which the popup should open relative to the iconAnchor
});
 
 
 
 

 
     for(i = 0; i < 23; i++)
 {

   L.marker([array_latitude_PHP_JS[i], array_longitude_PHP_JS[i]], {icon: leafletIcon})
.bindPopup(array_provinsi_PHP_JS[i].concat("<br>NPSN: ", array_NPSN_PHP_JS[i], "<br>Alamat: ", array_ALMT_PHP_JS[i], "</a><img src = 'ft/",     i       , ".jpg' width = '300px' height = '200px'></img>", "<br><br><a href = '", "data.php" ,  "'target = 'blank'>", 'Selengkapnya', "</a>")  )
.openPopup().addTo(map);


 }
 
 
 
 
 
</script>



</script>
            </div>
          </div>
        </div>
        </div>
      </div>
    </div>
<?php include_once "footer.php"; ?>
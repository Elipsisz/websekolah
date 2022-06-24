<?php
include "koneksi.php";

$Q = mysqli_query($link, "SELECT * FROM info_sekolah")or die(mysqli_error($link));
if($Q){
 $posts = array();
      if(mysqli_num_rows($Q))
      {
             while($post = mysqli_fetch_assoc($Q)){
                     $posts[] = $post;
             }
      }  
      $data = json_encode(array('results'=>$posts));
      echo $data;                     
}

?>
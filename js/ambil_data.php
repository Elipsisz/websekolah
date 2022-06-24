<?php
//
include "koneksi.php";
$Q = mysqli_query($link, "SELECT * FROM info_sekolah WHERE id='$id'")or die(mysqli_error($link));

if($Q){
    $posts = array();
    if(mysqli_num_rows($Q))
    {
        while($post = mysqli_fetch_assoc($Q)){
                $posts[] = $post;
        }
    }
    $data = json_encode(array('result'=>$posts));
}

?>
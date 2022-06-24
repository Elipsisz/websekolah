<?php

  $id = $_GET['Id'];
  // do some validation here to ensure id is safe

  $link = mysqli_connect("localhost", "root", "");
  mysqli_select_db($link, "websekolah");
  $sql = "SELECT * FROM info_sekolah WHERE Id='$id'";
  $result = mysqli_query($link, "$sql");
  $row = mysqli_fetch_assoc($result);
  //mysqli_close($link);

  header("Content-type: image/jpeg");
  echo $row['gambar'];
?>
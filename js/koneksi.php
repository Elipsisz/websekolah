<?php
 $link = mysqli_connect("localhost", "root", "", "websekolah");

 /* check connection */
 if (mysqli_connect_errno()) {
     printf("Connect failed: %s\n", mysqli_connect_error());
     exit();
 }

/* check if server is alive */
if (mysqli_ping($link)) {
    printf ("\n");
} else {
    printf ("Error: %s\n", mysqli_error($link));
}

/* close connection */
//mysqli_close($link);

mysqli_select_db($link, "-- Database: websekolah") or die ("tidak ada database yang dipilih!!");
?>
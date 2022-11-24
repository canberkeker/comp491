<?php

$vt_sunucu="localhost";
$vt_user="root";
$vt_password="bjk7bjk7";
$vt_name="Webpage";


$connection=mysqli_connect($vt_sunucu,$vt_user,$vt_password,$vt_name);



if(!$connection) {
    die("There is a problem on connection".mysqli_connect_error());
}else {
    echo "Connected";
}

?>
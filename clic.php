<?php
session_start();
include("includes/functions.php");
include("includes/conectbd.php");
//Se inserta el clic a la base de datos y se redirige a la página relacionada al anuncio
$idanuncio=$_GET["id"];
if(isset($_SESSION["idusuario"])){
    $idusuario=$_SESSION["idusuario"];
} else {
    $idusuario=0;
}
insertaClic($idusuario, $idanuncio);    //Lo inserta en la tabla clic (Es lo que hace Photon)
//Se redirige a la página del anuncio en cuestión
$urlanuncio=anunciourl($idanuncio);
header("Location: $urlanuncio");
?>
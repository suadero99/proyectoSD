<?php
session_start();
include("includes/functions.php");
include("includes/conectbd.php");
//Se inserta el clic a la base de datos y se redirige a la página relacionada al anuncio
$idanuncio=$_GET["id"];
$idusuario=$_SESSION["idusuario"];
insertaClic($idusuario, $idanuncio);
//Se redirige a la página del anuncio en cuestión
$urlanuncio=anunciourl($idanuncio);
header("Location: $urlanuncio");
?>
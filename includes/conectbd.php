<?php
    $host = "localhost";
    $bd = "proysdphoton";
    $user = "root";
    $pass = "";

    $conexion = mysqli_connect($host, $user, $pass, $bd);

    if (!$conexion) {
        die("Connection failed: " . mysqli_connect_error());
    }
?>
<?php
    function consulta($consulta, $columna){ //Caso general
        require 'conectbd.php';
        mysqli_set_charset($conexion,"utf8");
        $result=mysqli_query($conexion, $consulta);
        $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
        $dato=$row[$columna];
        return $dato;
    } 
    function nombre($usuario){
        $consulta="SELECT nombre FROM usuario WHERE usuario_id='".$usuario."' LIMIT 1"; 
        $nombre=consulta($consulta, "nombre");
        return $nombre;
    }
    function apellidos($usuario){
        $consulta="SELECT apellidos FROM usuario WHERE usuario_id='".$usuario."' LIMIT 1"; 
        $apellidos=consulta($consulta, "apellidos");
        return $apellidos;
    }
    function admin($usuario){
        $consulta="SELECT admin FROM usuario WHERE usuario='".$usuario."' LIMIT 1"; 
        $admin=consulta($consulta, "admin");
        return $admin;
    }
    
    function getRealIP(){

        if (!empty($_SERVER['HTTP_CLIENT_IP'])) {

            $ip = $_SERVER['HTTP_CLIENT_IP'];
    
        } else {
    
            if (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
    
                $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
    
            } else {
    
                $ip = $_SERVER['REMOTE_ADDR'];
            }
        }
        return $ip;

}


?>
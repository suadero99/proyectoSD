<?php
    function consulta($consulta, $columna){ //Caso general
        require 'conectbd.php';
        mysqli_set_charset($conexion,"utf8");
        $result=mysqli_query($conexion, $consulta);
        $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
        $dato=$row[$columna];
        return $dato;
    } 

    function inserta($inserta){ //Caso general
        require 'conectbd.php';
        mysqli_set_charset($conexion,"utf8");
        $result=mysqli_query($conexion, $inserta);
        return $result;
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

    function pagina($idpagina){
        $consulta="SELECT url FROM pagina WHERE pagina_id='".$idpagina."' LIMIT 1"; 
        $url=consulta($consulta, "url");
        return $url;
    }
    
    function insertaQuery($keyword, $idusuario, $ipusuario){
        $inserta="INSERT INTO query(usuario_id, ip, texto) VALUES('$idusuario', '$ipusuario', '$keyword') ";
        inserta($inserta);
    }

    function insertaClic($idusuario, $idanuncio){
        $inserta="INSERT INTO click(usuario_id, anuncio_id) VALUES('$idusuario', '$idanuncio') ";
        inserta($inserta);
    }

    function insertaHistorial($idusuario, $idpagina){
        $inserta="INSERT INTO historialusuario(usuario_id, pagina_id) VALUES('$idusuario', '$idpagina') ";
        inserta($inserta);
    }

    function anunciorandom($idusuario){
        //Primero selecciono algo que el usuario haya buscado con anterioridad
        $consulta="SELECT texto FROM query WHERE usuario_id=$idusuario ORDER by rand() LIMIT 1";
        $texto=consulta($consulta, "texto");
        //Luego, busco un anuncio aleatorio relacionado a dicho texto y envio su id en el return
        $consulta2="SELECT anuncio_id FROM anuncio WHERE nombre like'%".$texto."%' ORDER by rand() LIMIT 1";
        $idanuncio=consulta($consulta2, "anuncio_id");
        return $idanuncio;
    }

    function usuariorandom(){
        $consulta="SELECT usuario_id FROM usuario ORDER by rand() LIMIT 1";
        $usuario=consulta($consulta, "usuario_id");
        return $usuario;
    }

    function paginarandom($keyword){
        $consulta="SELECT pagina_id FROM pagina WHERE descripcion LIKE '%$keyword%' ORDER BY rand() LIMIT 1";
        $pagina=consulta($consulta, "pagina_id");
        return $pagina;
    }

    function anuncioimagen($idimagen){
        $consulta="SELECT imagen FROM anuncio WHERE anuncio_id='".$idimagen."' LIMIT 1"; 
        $imagen=consulta($consulta, "imagen");
        return $imagen;
    }

    function anunciourl($idanuncio){
        $consulta="SELECT url FROM anuncio WHERE anuncio_id='".$idanuncio."' LIMIT 1"; 
        $url=consulta($consulta, "url");
        return $url;
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
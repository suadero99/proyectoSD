<?php
session_start();
include("includes/functions.php");
include("includes/conectbd.php");
if(isset($_SESSION['nombre'])){
    $nombres=$_SESSION['nombre'];
} else {
    $nombres=NULL;
}
$usuarios=$_POST['usuarios'];

//Realización de inserciones
$tiempo_inicial = microtime(true);
for($i = 0;$i < $usuarios; $i++){   //El proceso se repite simulando el proceso de multiples usuarios
    //1.-Selección de usuario al azar
    $randUsuario=usuariorandom();
    $ipusuario="0:0:0";
    //2.-Busqueda de una palabra (5 opciones disponibles para esta prueba)
    $palabras=array("perro", "gato", "flores", "fiesta", "ropa");
    $numero=rand(0,4);
    $palabrasel=$palabras[$numero];
    //3.-Se crea el query
    insertaQuery($palabrasel, $randUsuario, $ipusuario);
    //4.-Se accede a una página relacionada y se guarda en el historial
    $paginasel=paginarandom($palabrasel);
    insertaHistorial($randUsuario, $paginasel);
    //5.-Se muestra el anuncio relacionado a sus búsquedas
    $idanuncio=anunciorandom($randUsuario);
    $imagen=anuncioimagen($idanuncio);
    $url=anunciourl($idanuncio);
    //6.-El usuario hace click y se registra el evento en la base
    insertaClic($randUsuario, $idanuncio);

}
$tiempo_final = microtime(true);
$tiempo = $tiempo_final - $tiempo_inicial;

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Panel Admin</title>
</head>

<body>
    <!--Bootstrap bundle with popper-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>

    <div class="container-fluid">
        <!--Barra de logo, hola ### y foto-->
        <div class="row align-items-center">
            <div class="col-md-3">
                <a href="index.php">
                    <img src="img/gugul_logo_180.png" alt="logo" style="max-width: 180px;">
                </a>
            </div>
            <div class="col-md-6">
                <h1 class="display-6">Panel de administrador</h1>
            </div>
            <div class="col-md-1">
                Hola, <?php echo $nombres; ?>
                <p><a href="logout.php">Cerrar sesión</a></p>
            </div>
            <div class="col-md-2">
                <img src="img/pp.jpg" class="img-thumbnail" alt="profile pic"
                    style="max-width: 50px; border-radius: 50%;">
            </div>
        </div>
    </div>
    <div class="container">
        <h1>Ejecución de pruebas de Photon</h1>
        <br>
        <h4>Tiempo de respuesta para <?php echo $usuarios; ?> procesos: <?php echo $tiempo; ?> segundos</h4>     
        <a class="btn btn-primary" href="panel.php">Regresar al panel</a> 
    </div>
</body>

</html>
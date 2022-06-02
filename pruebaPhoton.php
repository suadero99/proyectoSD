<?php
session_start();
include("includes/functions.php");
include("includes/conectbd.php");
if(isset($_SESSION['nombre'])){
    $nombres=$_SESSION['nombre'];
} else {
    $nombres=NULL;
}
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
        <h4>A continuación, vamos a ejecutar múltiples inserciones a la base de datos simulando el uso de usuarios
            normales de Gugul.</h4>
        <h4>La prueba servirá para demostrar que el uso de una base de datos relacional no es óptima para Photon debido
            al tiempo de respuesta del sistema. </h4>
        <br><br>
        <h4>Selecciona una cantidad de usuarios:</h4>
        <br>
        <form action="inserciones.php" method="POST">
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <label class="input-group-text" for="inputGroupSelect01">Usuarios</label>
                </div>
                <select class="custom-select" id="inputGroupSelect01" name="usuarios">
                    <option selected>Selecciona...</option>
                    <option value="100">100</option>
                    <option value="250">250</option>
                    <option value="500">500</option>
                    <option value="1000">1000</option>
                </select>
            </div>
            <input type="submit" class="btn btn-primary">
        </form>
    </div>
</body>

</html>
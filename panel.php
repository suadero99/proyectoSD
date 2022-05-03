<?php
session_start();
include("includes/functions.php");
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

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

  <title>Panel Admin</title>
</head>
<body>
  <!--Bootstrap bundle with popper-->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

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
      </div>
      <div class="col-md-2">
        <img src="img/pp.jpg" class="img-thumbnail" alt="profile pic" style="max-width: 50px; border-radius: 50%;">
      </div>
    </div>
  </div>
  <div class="container">
    <div class="row my-5">
      <!--Consultas más realizadas-->
      <div class="col-md-3 text-center">
        <h5>Consultas más realizadas</h5>
        <p>1._________________________</p>
        <p>2._________________________</p>
        <p>3._________________________</p>
        <p>4._________________________</p>
      </div>
      <!--Estadísticas-->
      <div class="col-lg-9">
        <div class="row text-center">
          <h5>Estadísticas de anuncios</h5>
        </div>
        <div class="card-group">
          <!--Nombre empresa-->
          <div class="card">
            <div class="card-body text-center">
              <h5 class="card-title">Empresa</h5>
              <p class="card-text">Nombre de empresa</p>
            </div>
          </div>
          <!--Imagen de anuncio-->
          <div class="card">
            <div class="card-body text-center">
              <h5 class="card-title">Anuncio mostrado</h5>  
              <img src="img/prueba.jpg" class="rounded" alt="anuncio mostrado">
              <p class="card-text"></p>
              <div class="card-footer">
                <small class="text-muted">Imagen perteneciente al anuncio</small>
              </div>
            </div>
          </div>
          <!--Contador de clicks-->
          <div class="card">
            <div class="card-body text-center">
              <h5 class="card-title">Número de clicks</h5>
              <p class="card-text">#### clicks</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
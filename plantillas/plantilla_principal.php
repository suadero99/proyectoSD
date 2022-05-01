<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Búsqueda de Gugul</title>

    <style>
    .vertical-center {
      margin: 0;
      position: absolute;
      top: 50%;
      -ms-transform: translateY(-50%);
      transform: translateY(-50%);
    }
    </style>
</head>
<body>
    <!--Bootstrap bundle with popper-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    
    <!--Lo necesario para Login-->
    <div class="container-fluid my-4">
      <div class="row justify-content-end">
        <div class="col-10">

        </div>
        <div class="col-lg-2 order-last end-0">
          <!--<a href="#" class="link-primary">Iniciar sesión</a>-->
          <p>
            <button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseLogin" aria-expanded="false" aria-controls="collapseExample">
              Iniciar Sesión
            </button>
          </p>
          <div class="collapse" id="collapseLogin">
            <div class="card card-body" style="max-width: 360px;">
              <?php

                if(!empty($_GET['mensaje'])){
                    $mensaje="Usuario o contraseña incorrecto(s)";
                } else {
                    $mensaje="";
                }

              ?>
              <form action="includes/valida.php" method="post">
                  <p>Usuario:</p>
                  <input name="user" type="text">
                  <p>Contraseña:</p>
                  <input name="pass" type="password">
                  <input type="submit" value="Ingresar">
                  <?php echo $mensaje; ?>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!--logo y barra de búsqueda-->
    <div class="container-fluid vertical-center">
      <div class="row justify-content-center">
          <img src="gugul_logo.png" class="card-img-top" alt="logo" style="max-width: 540px;">
      </div>
      <div class="row justify-content-center">
        <div class="input-group justify-content-center">
          <input class="form-control" list="opcionesBusqueda" id="busqueda1" placeholder="Escribe para buscar..." style="max-width: 590px;">
          <datalist id="opcionesBusqueda">
            <option value="Perros">
            <option value="Gatos">
            <option value="Flores">
          </datalist>
          <button class="btn btn-outline-primary" type="button" id="botonBusqueda">Buscar</button>
        </div>
      </div>
    </div>

</body>
</html>
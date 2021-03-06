<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

  <title>Resultados de búsqueda</title>
</head>
<body>
  <!--Bootstrap bundle with popper-->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  
  <!--Logo, Barra de búsqueda y "hola usuario"-->
  <div class="container-fluid">
    <div class="row align-items-center">
      <div class="col-lg-3">
        <img src="gugul_logo_240.png" class="rounded" alt="logo" style="max-width: 240px;">
      </div>
      <div class="col-lg-6">
        <div class="input-group">
          <input class="form-control" list="opcionesBusqueda" id="busqueda1" placeholder="Escribe para buscar...">
          <datalist id="opcionesBusqueda">
            <option value="Perros">
            <option value="Gatos">
            <option value="Flores">
          </datalist>
          <button class="btn btn-outline-primary" type="button" id="botonBusqueda">🔎</button>
        </div>
      </div>
      
      <div class="col-lg-1">
        Hola, usuario
      </div>
      <div class="col-lg-1">
        <img src="pp.jpg" class="img-thumbnail" alt="profile pic" style="max-width: 50px; border-radius: 50%;">
      </div>
    </div>
  </div>

  <!--Resultados de búsqueda-->
  <div class="container">
    <div class="row my-5">
      <p>Se han encontrado ### resultados<p>
    </div>
    <div class="row my-5">
      <a href="#" class="link-primary">Resultado 1</a>
    </div>
    <div class="row my-5">
      <a href="#" class="link-primary">Resultado 2</a>
    </div>
    <div class="row my-5">
      <a href="#" class="link-primary">Resultado 3</a>
    </div>
    <div class="row my-5">
      <a href="#" class="link-primary">Resultado 4</a>
    </div>
  </div>

  <!--Falta la parte de resultados-->
</body>
</html>
<?php 
//Mostrar la página solicitada en un iframe
session_start();
include("includes/functions.php");
include("includes/conectbd.php");
//Paso 1: Obtener la palabra clave de la búsqueda
$idpagina=$_GET["id"];
$url=pagina($idpagina);
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <title>Búsqueda de Gugul</title>

</head>

<body>
    <!--Bootstrap bundle with popper-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>
<iframe src="<?php echo $url; ?>"></iframe>
<div class="menu">
<a href="google.com">
  <img src="https://monterreyrock.com/wp-content/uploads/2022/04/FOSZRE_WQAIPOkG.jpg" alt="" class="imagen">
</a>
</div>
</body>

</html>
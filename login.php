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

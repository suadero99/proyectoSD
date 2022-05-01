<?php
session_start();
include("includes/functions.php");
$nombres=$_SESSION['nombre'];
?>
<H1>Gugul</H1>
<p>Hola, <?php echo $nombres; ?>. Tu ip es <?php echo getRealIP(); ?></p>
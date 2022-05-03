<?php
    session_start();
   include("functions.php");
   include("conectbd.php");
   
   if($_SERVER["REQUEST_METHOD"] == "POST") {
      // username and password sent from form 
      
      $user = $_POST['user'];
      $pass = $_POST['pass']; 

      
      $sql = "SELECT usuario_id FROM usuario WHERE usuario = '$user' and contra = '$pass'";

      $result = mysqli_query($conexion,$sql);

      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
      
      $count = mysqli_num_rows($result);
      
      
      // If result matched $myusername and $mypassword, table row must be 1 row
		
      if($count == 1) {
            $id=$row['usuario_id'];
            //Guardar como valores de sesión los datos del usuario que ingresó
            $_SESSION["user"]=$user;
            $_SESSION["pass"]=$pass;
            $_SESSION["nombre"]=nombre($id);
            $_SESSION["apellidos"]=apellidos($id);
            $_SESSION["admin"]=admin($id);
            echo $_SESSION["nombre"];
            header("location: ../index.php");
         
      }else {
         header("location: ../index.php?mensaje=error");
      }
   }
?>

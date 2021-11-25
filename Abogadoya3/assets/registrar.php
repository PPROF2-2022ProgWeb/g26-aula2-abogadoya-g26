<?php
include('conexion.php');

session_start();
if(isset($_SESSION['nombredelusuario']))
{
	header('location: listar.php');
}

if(isset($_POST["btnregistrar"]))
{

$usuario = $_POST["txtusuario"];
$pass = $_POST["txtpassword"];
$nombre = $_POST["txtnombre"];
$mail = $_POST["txtmail"];
$dire = $_POST["txtdireccion"];
$cel = $_POST["txtcelular"];


	$sqlgrabar = "INSERT INTO logincliente(usuario,password,nombre, mail, direccion, celular ) values ('$usuario','$pass','$nombre','$mail','$dire' , $cel)";
	
	if(mysqli_query($conn,$sqlgrabar))
	{
		echo "<script> alert('Usuario registrado con exito: $nombre'); window.location='login.php' </script>";
	}else 
	{
		echo "Error: ".$sql."<br>".mysql_error($conn);
	}
} 
?>

<!doctype html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Ingresar o loguin en AbogadoYa"/>
    <link rel="icon" href="assets/iconos/icono.png" />
    <link rel="stylesheet" href="css/styles.css" />
    <link rel="preconnect" href="https://fonts.gstatic.com/" />
    <link rel="icon" href="assets/iconos/icono.png" />
    <link
      href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&amp;family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;1,100;1,300;1,400;1,500;1,700&amp;display=swap"
      rel="stylesheet"
    />
    <script src="bases.html"></script>
     <link href="css/bootstrap.min.css" rel="stylesheet">
    <title>Mi Cuenta</title>
    <link rel="stylesheet" href="css/login.css">
  </head>
  <body class="register">
<header>
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="logo" id="logo3">
          <img src="assets/imagenes/Logo.png" alt="logo" />
        </div>
          <div class="container-fluid" id="containerfluid1">
          <a class="navbar-brand" href="index.html">ABOGADO YA</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav me-auto mb-2 mb-md-0">
              <li class="nav-item">
                <a class="nav-link active" id="servicios" aria-current="page" href="index.html#services">SERVICIOS</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" id="nosotros1" aria-current="page" href="index.html#nosotros">NOSOTROS</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" id="contacto" aria-current="page" href="index.html#contact">CONTACTO</a>
              </li>
            </li>
            <li class="nav-item">
              <a class="nav-link active" id="registrate" aria-current="page" href="registrar.php">REGISTRATE</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" id="micuenta" aria-current="page" href="login.php">MI CUENTA</a>
            </li>
            </ul>
            <form class="d-flex">
           
              <a class="btn btn-lg btn-primary" target="_blank" onclick="confirmacion(pagina)" type="submit">BUSCAR EXPEDIENTE</a>
            </form>
          </div>
        </div>
      </nav>
    </header>
    

<div>
<form method="post" action="registrar.php" name="formulariol">

<table class="form-login">

<tr><td class="titulos"><label>Registrar</label></td></tr>
<tr><td><img class="logo1" src="logo.png"/></td></tr>
<tr><td><input class="controls" type="text" name="txtusuario" placeholder="&#128273; Ingresar usuario" required /></td></tr>
<tr><td><input class="controls" type="password" name="txtpassword" placeholder="&#128274; Ingresar Contraseña" required /> </td></tr>
<tr><td><input class="controls" type="text" name="txtnombre" placeholder="&#129485; Ingresar nombre" required /></td></tr>
<tr><td><input class="controls" type="text" name="txtmail" placeholder="&#128231; Ingresar Mail" required /> </td></tr>
<tr><td><input class="controls" type="number" name="txtcelular" placeholder="&#9742; Ingresar Celular" required /> </td></tr>
<tr><td><input class="controls" type="text" name="txtdireccion" placeholder="&#128234; Ingresar Direccion" required /> </td></tr>
<tr><td><input class="buttons" type="submit" value="Registrar" name="btnregistrar"/> </td></tr>
<br>
<tr><td><a class="Iniciar" href="login.php" style="float:center">Iniciar sesión</a></td></tr>
</table>

</form>
</div>

<br>
<br>
<br>
<br>
<br>
<footer>
      <p>
        Todos los derechos reservados
        <span>
          <img src="assets/iconos/copyright-regular.png" alt="icono" />
        </span>
        Estudio Jurídico 2021
      </p>
    </footer>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/funcionesGrupo99.js"></script>
</body>

</html>
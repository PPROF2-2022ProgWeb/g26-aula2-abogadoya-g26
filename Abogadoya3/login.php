<?php
include('conexion.php');

session_start();
if(isset($_SESSION['nombredelusuario']))
{
	header('location: listar.php');
}

if(isset($_POST['btningresar']))
{
	
$usuario = $_POST["txtusuario"];
$pass = $_POST["txtpassword"];

	
$query = mysqli_query($conn,"SELECT * FROM logincliente WHERE usuario = '".$usuario."' and password = '".$pass."'");
$nr = mysqli_num_rows($query);

if($nr == 1)
{
	$_SESSION['nombredelusuario']=$usuario;
	header("Location: listar.php");
}
else if ($nr == 0) 
{
	echo "<script> alert('Usuario no existe');window.location= 'index.html' </script>";
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
     <!-- Bootstrap core CSS -->
     <link href="css/bootstrap.min.css" rel="stylesheet">
    <title>Mi Cuenta</title>
    <link rel="stylesheet" href="css/login.css">
  </head>
 <body>
    
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

      
    
<div class="base" id=base>

<form method="post" action="login.php" name="clientelogin">

<table class="form-login">

<tr><td class="titulos" style=""><label>Login</label></td></tr>
<tr><td><img class="logo1" src="logo.png"/></td></tr>
<tr><td><input class="controls" type="text" name="txtusuario" placeholder="&#128273; Ingresar usuario" required /></td></tr>
<tr><td><input class="controls" type="password" name="txtpassword" placeholder="&#128274; Ingresar Contraseña" required /> </td></tr>
<tr><td><input class="buttons" type="submit" value="Ingresar" name="btningresar"/> </td></tr>

<br>
<tr><td><a class="Iniciar" href="registrar.php" style="float:center">Crear una cuenta</a></td></tr>

</table>

</form>

</div>
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
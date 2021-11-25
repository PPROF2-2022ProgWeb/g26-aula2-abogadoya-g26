<?php
include('conexion.php');
session_start();
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

<table class="form-login">
<?php

if(isset($_SESSION['nombredelusuario']))
{
	$usuarioingresado = $_SESSION['nombredelusuario'];
	echo "<tr><td colspan='3' align='center'>
	<h1>Bienvenido: $usuarioingresado </h1></td></tr>";
}
else
{
	header('location: login.php');
}
?>

<tr><td class="usuario" ><label>USUARIO</label></td>
	<td class="usuario" ><label>N°EXPEDIENTE</label></td>
	<td class="usuario" ><label>JUZGADO</label></td>
	<td class="usuario" ><label>MATRICULA ABOGADO</label></td>
        <td class="usuario" ><label>FECHA ALTA EXPEDIENTE</label></td>
        <td class="usuario" ><label>ULTIMO MOVIMIENTO</label></td>
</tr>

<?php

if(isset($_POST['btncerrar']))
 {
	 session_destroy();
	 header('location: login.php');
 } 

$sql="SELECT * FROM caso WHERE usuario='".$usuarioingresado."'";
$result=mysqli_query($conn,$sql);

while($mostrar=mysqli_fetch_array($result))
{
	
?>
<tr>    <td class="datos" align="center"><?php echo $mostrar['usuario'] ?>
	<td class="datos" align="center"><?php echo $mostrar['Expediente'] ?>
        <td class="datos" align="center"><?php echo $mostrar['Juzgado'] ?>
        <td class="datos" align="center"><?php echo $mostrar['Matricula'] ?>
        <td class="datos" align="center"><?php echo $mostrar['FechaAlta'] ?>
        <td class="datos" align="center"><?php echo $mostrar['UltimoMovimiento'] ?>

</tr>
<?php
}
?>

<?php
?>

<form method="POST">	
<tr><td colspan='2' align="center"><input class="buttons" type="submit" value="Cerrar sesión" name="btncerrar" /></td></tr>
</form>

</table>
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
<?php

/*incluye el archivo de conexión que contiene 
el codigo de la base de datos */
include './conexion/conexion.php';

print_r($_POST);

/*Asigna valores del formulario a las variables php  */
$nombre = $_POST['nombre'];
$ap_paterno = $_POST['ap_paterno'];
$ap_materno = $_POST['ap_materno'];
$fecha_nacimiento = $_POST['fecha_nacimiento'];
$correo_electronico = $_POST['correo_electronico'];
$telefono = $_POST['telefono'];



$query = " INSERT INTO clientes(nombre, ap_paterno, ap_materno, fecha_nacimiento, correo_electronico, telefono)
Values ('$nombre', '$ap_paterno', '$ap_materno', '$fecha_nacimiento', '$correo_electronico', '$telefono')";

$insert = $conexion->query($query);

header('Location: ./index.php');

?>
<?php

//crear conexion a la base de datos

$hostname = "localhost";
$username = "root";
$password = "";
$database = "tb_clientes";

$conexion = new mysqli ($hostname, $username, $password, $database);

if ($conexion->connect_error){
    die("La conexión falló". $conexion->connect_error);
} else{
    echo "Conexión exitosa";
}

?>  
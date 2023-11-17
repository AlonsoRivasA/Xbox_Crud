<?php
// Salir si alguno de los datos no está presente
if (

    !isset($_POST["nombre"]) || 
    !isset($_POST["descripcion"]) || 
    !isset($_POST["precio"]) || 
    !isset($_POST["stock"]) || 
    !isset($_POST["genero"]) || 
    !isset($_POST["codigo"]) || 
    !isset($_POST["desarrolladores"])
) {
    exit();
}

// Si todo va bien, se ejecuta esta parte del código...

include_once "base_de_datos.php";

$idProducto = $_POST["idProducto"];
$nombre = $_POST["nombre"];
$descripcion = $_POST["descripcion"];
$precio = $_POST["precio"];
$stock = $_POST["stock"];
$genero = $_POST["genero"];
$codigo = $_POST["codigo"];
$desarrolladores = $_POST["desarrolladores"];

$sentencia = $base_de_datos->prepare("INSERT INTO tbl_juegos( nombre, descripcion, precio, stock, genero, codigo, desarrolladores) VALUES (?, ?, ?, ?, ?, ?, ?);");
$resultado = $sentencia->execute([$nombre, $descripcion, $precio, $stock, $genero   , $codigo, $desarrolladores]);

if ($resultado === TRUE) {
    header("Location: ./listar.php");
    exit;
} else {
    echo "Algo salió mal. Por favor verifica que la tabla exista.";
}

include_once "pie.php";
?>

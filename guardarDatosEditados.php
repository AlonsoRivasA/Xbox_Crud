<?php

# Salir si alguno de los datos no está presente
if (
   
    !isset($_POST["nombre"]) ||
    !isset($_POST["descripcion"]) ||
    !isset($_POST["precio"]) ||
    !isset($_POST["stock"]) ||
    !isset($_POST["genero"]) ||
    !isset($_POST["codigo"]) ||
    !isset($_POST["desarrolladores"])
) exit();

# Si todo va bien, se ejecuta esta parte del código...

include_once "base_de_datos.php";

$nombre = $_POST["nombre"];
$descripcion = $_POST["descripcion"];
$precio = $_POST["precio"];
$stock = $_POST["stock"];
$genero = $_POST["genero"];
$codigo = $_POST["codigo"];
$desarrolladores = $_POST["desarrolladores"];
$id = $_POST["id"];  // Añadí la línea para mantener la variable $id

$sentencia = $base_de_datos->prepare("UPDATE tbl_juegos SET  nombre = ?, descripcion = ?, precio = ?, stock = ?, genero = ?, codigo = ?, desarrolladores = ? WHERE id = ?;");
$resultado = $sentencia->execute([$nombre, $descripcion, $precio, $stock, $genero, $codigo, $desarrolladores, $id]);

if ($resultado === TRUE) {
    header("Location: ./listar.php");
    exit;
} else {
    echo "Algo salió mal. Por favor verifica que la tabla exista, así como el ID del producto";
}
?>

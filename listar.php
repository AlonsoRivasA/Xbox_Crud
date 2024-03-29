<?php include_once "encabezado.php" ?>
<?php
include_once "base_de_datos.php";
$sentencia = $base_de_datos->query("SELECT * FROM tbl_juegos;");
$productos = $sentencia->fetchAll(PDO::FETCH_OBJ);
?>
	<div class="col-xs-12">
		<h1>JUEGOS</h1>
		<div>
			<a class="btn btn-success" href="./formulario.php">Nuevo <i class="fa fa-plus"></i></a>
		</div>
		<br>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>ID</th>
					<th>Nombre</th>
					<th>Descripción</th>
					<th>Precio</th>
					<th>Stock</th>
					<th>Genero</th>
					<th>Codigo</th>
					<th>Desarrolladores</th>
					<th>Editar</th>
					<th>Eliminar</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($productos as $producto){ ?>
				<tr>
					<td><?php echo $producto->id ?></td>
					<td><?php echo $producto->nombre ?></td>
					<td><?php echo $producto->descripcion ?></td>
					<td><?php echo $producto->precio ?></td>
					<td><?php echo $producto->stock ?></td>
					<td><?php echo $producto->genero ?></td>
					<td><?php echo $producto->codigo ?></td>
					<td><?php echo $producto->desarrolladores ?></td>
					<td><a class="btn btn-warning" href="<?php echo "editar.php?id=" . $producto->id?>"><i class="fa fa-edit"></i></a></td>
					<td><a class="btn btn-danger" href="<?php echo "eliminar.php?id=" . $producto->id?>"><i class="fa fa-trash"></i></a></td>
				</tr>
				<?php } ?>
			</tbody>
		</table>
	</div>
<?php include_once "pie.php" ?>
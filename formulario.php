<?php include_once "encabezado.php" ?>

<div class="col-xs-12">
	<h1>Nuevo producto</h1>
	<form method="post" action="nuevo.php">
		
			<label for="nombre">Nombre:</label>
			<input  class="form-control" name="nombre" required type="text" id="nombre" placeholder="Escribe el nombre">

			<label for="descripcion">Descripción:</label>
			<textarea required id="descripcion" name="descripcion" cols="30" rows="5" class="form-control"></textarea>

			<label for="precio">Precio:</label>
			<input class="form-control" name="precio" required type="number" id="precio" placeholder="Precio">

			<label for="stock">Stock:</label>
			<input class="form-control" name="stock" required type="number" id="stock" placeholder="Cantidad o stock">
			
			<label for="marca">Genero:</label>
			<input class="form-control" name="genero" required type="text" id="genero" placeholder="Escribe el Genero">

			<label for="codigo">Codigo:</label>
			<input class="form-control" name="codigo" required type="number" id="codigo" placeholder="codigo">

			<label for="tamano">Desarrolladores:</label>
			<input  class="form-control" name="desarrolladores" required type="text" id="desarrolladores" placeholder="Escribe los desarrolladores">
		<br><br><input class="btn btn-info" type="submit" value="Guardar">
	</form>
</div>
<?php include_once "pie.php" ?>
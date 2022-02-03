
<form action="reg.php" method="POST">
Fecha de Solicitud<br>
<input type="date" name="date" /><br><br>
Fecha de Entrega<br>
<input type="date" name="dateo" /><br><br>
Emisor<br>
<input type="text" name="rb" /><br><br>
Tipo de Documento<br>
<select name="doc_type" class="ed">
	<?php
	include('connect.php');		
		$result = $db->prepare("SELECT * FROM doc_type ORDER BY id DESC");
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
		echo '<option value="'.$row[name].'">'.$row[name].'</option>';
		}
	?>
</select><br /><br>
 Descripción <br>
<textarea name="desc"></textarea><br><br>
Oficina<br>
<select name="office" class="ed">
	<?php
	include('connect.php');		
		$result = $db->prepare("SELECT * FROM offices ORDER BY id DESC");
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
		echo '<option value="'.$row[name].'">'.$row[name].'</option>';
		}
	?>
</select><br /><br>
Estado<br>
<input type="text" name="status" /><br><br>
Receptor<br>
<input type="text" name="ft" /><br><br>
<input type="submit" value="Guardar" />
</form>
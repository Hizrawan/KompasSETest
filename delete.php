<?php
include("config.php");
	$id = $_REQUEST['id'];
	$result = mysqli_query($mysqli, "DELETE FROM `berita` WHERE idPenulis=$id");
	header("Location:index.php");
?>

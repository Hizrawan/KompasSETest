<?php
define("DB_SERVER", "localhost");
define("DB_USER", "root");
define("DB_PASSWORD", "root");
define("DB_DATABASE", "test");
$mysqli = mysqli_connect("db", DB_USER, DB_PASSWORD, DB_DATABASE) or die("Could not connect database");
?>

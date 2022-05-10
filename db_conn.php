<?php

$sname= "localhost";
$unmae= "root";
$password = "radu2208";
$db_name = "firmacurierat";

$conn = mysqli_connect($sname, $unmae, $password, $db_name);

if (!$conn) {
	echo "Connection failed!";
}
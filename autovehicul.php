<?php 
include "db_conn.php"

 ?>
<?php include "includes/header.php" ?>
<body>
	 <link rel="stylesheet" type="text/css" href="style1.css">
	 <?php include "includes/nav.php"?>
<?php
$sql = "SELECT * from autovehicule";
$result = mysqli_query($conn, $sql);
foreach ($result as $key) {
	echo "<h3 font-size: 5px;'>", 'Marca -> ', $key['Marca'], '</h3>';
	echo "<h3 font-size: 5px;'>",'Model -> ', $key['Model'], '</h3>';
	echo "<h3 font-size: 5px;'>", 'Numar_de_inmatriculare -> ', $key['Numar_de_inmatriculare'], '</h3>';
	echo "<h3 font-size: 5px;'>",'Capacitate -> ', $key['Capacitate'], '</h3>';
	echo '<br>';
}
?>
</body>
</html>

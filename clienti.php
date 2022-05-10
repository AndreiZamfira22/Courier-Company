<?php 
include "db_conn.php"

 ?>
<?php include "includes/header.php" ?>
<body>
	 <link rel="stylesheet" type="text/css" href="style1.css">
	 <?php include "includes/nav.php"?>
<?php
$sql = "SELECT * from clienti";
$result = mysqli_query($conn, $sql);
foreach ($result as $key) {
	echo "<h3 font-size: 5px;'>", 'Nume -> ', $key['Nume'], '</h3>';
	echo "<h3 font-size: 5px;'>",'Prenume -> ', $key['Prenume'], '</h3>';
	echo "<h3 font-size: 5px;'>", 'Nr_telefon ->', $key['Nr_telefon'], '</h3>';
	echo "<h3 font-size: 5px;'>",'Email ->', $key['Email'], '</h3>';
	echo '<br>';
}
?>
</body>
</html>

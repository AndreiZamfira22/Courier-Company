<?php 
include "db_conn.php"

 ?>
<?php include "includes/header.php" ?>
<body>
	 <link rel="stylesheet" type="text/css" href="style1.css">
	 <?php include "includes/nav.php"?>
<?php
		$sql = "SELECT a.nume, a.prenume FROM angajati a JOIN autovehicule au ON a.ID_Angajat = au.ID_Angajat";
		$result = mysqli_query($conn, $sql);
		echo "<h3 font-size: 5px;'>", 'Soferii din firma sunt:  ', '</h3>';
		foreach ($result as $key) {
			echo "<h3 font-size: 5px;'>",'--->', $key['nume'], ' ', $key['prenume'], '</h3>';
		}
	?>
</body>
</html>
	
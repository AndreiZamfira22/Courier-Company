<?php 
include "db_conn.php"

 ?>
<?php include "includes/header.php" ?>
<body>
	 <link rel="stylesheet" type="text/css" href="style1.css">
	 <?php include "includes/nav.php"?>
<?php
		$sql = "SELECT Nume, Prenume from Angajati
				where DataAngajarii = (SELECT min(DataAngajarii)
				from angajati)";
		$result = mysqli_query($conn, $sql);
		echo "<h3 font-size: 5px;'>", 'Cel mai vechi angajat este: ', '</h3>';
		foreach ($result as $key) {
			echo "<h3 font-size: 5px;'>",'--->', $key['Nume'], ' ', $key['Prenume'],'</h3>';
		}
	?>
</body>
</html>
	
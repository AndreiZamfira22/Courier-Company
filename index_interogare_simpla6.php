<?php 
include "db_conn.php"

 ?>
<?php include "includes/header.php" ?>
<body>
	 <link rel="stylesheet" type="text/css" href="style1.css">
	 <?php include "includes/nav.php"?>
<?php
		$sql = "SELECT d.Nume FROM departamente d JOIN angajati a on d.ID_Departament = a.ID_Departament and a.Salariu IN(select max(Salariu) from angajati)";
		$result = mysqli_query($conn, $sql);
		echo "<h3 font-size: 5px;'>", 'Departamentul unde se gaseste salariul maxim este: ', '</h3>';
		foreach ($result as $key) {
			echo "<h3 font-size: 5px;'>",'--->', $key['Nume'],'</h3>';
		}
	?>
</body>
</html>
	
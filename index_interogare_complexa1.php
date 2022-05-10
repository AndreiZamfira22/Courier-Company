<?php 
include "db_conn.php"

 ?>
<?php include "includes/header.php" ?>
<body>
	 <link rel="stylesheet" type="text/css" href="style1.css">
	 <?php include "includes/nav.php"?>
<?php
		$sql = "SELECT c.Nume as Nume, c.Prenume as Prenume, (
					select count(*) from  comanda co
					where c.ID_client = co.ID_client)
    				as NumarComenzi
    			from clienti c";
		$result = mysqli_query($conn, $sql);
		echo "<h3 font-size: 5px;'>", 'Clientii si numarul de comenzi efectuate de acestia: ', '</h3>';
		foreach ($result as $key) {
			echo "<h3 font-size: 5px;'>",'--->', $key['Nume'], ' ', $key['Prenume'],' ----> ', $key['NumarComenzi'], '</h3>';
		}
	?>
</body>
</html>
	
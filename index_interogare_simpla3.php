<?php 
include "db_conn.php"

 ?>
<?php include "includes/header.php" ?>
<body>
	 <link rel="stylesheet" type="text/css" href="style1.css">
	 <?php include "includes/nav.php"?>
<?php
		$sql = "SELECT c.nume, c.prenume from clienti c join comanda co on c.ID_client = co.ID_client and co.Pret_transport IN(select max(Pret_transport) from comanda)";
		$result = mysqli_query($conn, $sql);
		echo "<h3 font-size: 5px;'>", 'Clientul cu cel mai mare pret de transport este:  ', '</h3>';
		foreach ($result as $key) {
			echo "<h3 font-size: 5px;'>",'--->', $key['nume'], ' ', $key['prenume'], '</h3>';
		}
	?>
</body>
</html>
	
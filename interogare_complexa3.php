<?php 
include "db_conn.php"

 ?>
<?php include "includes/header.php" ?>
<body>
	 <link rel="stylesheet" type="text/css" href="style1.css">
	 <?php include "includes/nav.php"?>
<?php
	if(isset($_POST['submit'])){

		if(!empty($_POST['transport'])){

			$transport = $_POST['transport'];
			$query = "SELECT c.Nume, c.Prenume
						FROM clienti c
						WHERE c.ID_client IN
   							(SELECT co.ID_client
    						FROM comanda co
    						WHERE co.Pret_transport > '$transport');";
			$result = mysqli_query($conn, $query) or die(mysqli_error($conn));

			if($result){
					echo "<h3 font-size: 5px;'>", 'Clientii care platesc mai mult pe transport decat numarul introdus sunt: ', '</h3>';
					foreach ($result as $key) {
					echo "<h3 font-size: 5px;'>",'--->', $key['Nume'], ' ', $key['Prenume'], '</h3>';
					}
			}
			else{

				echo "Not completed";
			}

		}	
		else{
			echo "all fields required";
		}
	}

?>
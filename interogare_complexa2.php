<?php 
include "db_conn.php"

 ?>
<?php include "includes/header.php" ?>
<body>
	 <link rel="stylesheet" type="text/css" href="style1.css">
	 <?php include "includes/nav.php"?>
<?php
	if(isset($_POST['submit'])){

		if(!empty($_POST['numar'])){

			$numar = $_POST['numar'];
			$query = "SELECT c.Nume as Nume, c.Prenume as Prenume, (
						select count(*) from  comanda co
						where c.ID_client = co.ID_client
    					)
    					as NumarComenzi
    					from clienti c
    					having NumarComenzi > '$numar'";
			$result = mysqli_query($conn, $query) or die(mysqli_error($conn));

			if($result){
					echo "<h3 font-size: 5px;'>", 'Clientii care au facut mai multe comenzi decat numarul introdus sunt: ', '</h3>';
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
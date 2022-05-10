<?php 
include "db_conn.php"

 ?>
<?php include "includes/header.php" ?>
<body>
	 <link rel="stylesheet" type="text/css" href="style1.css">
	 <?php include "includes/nav.php"?>
<?php
	if(isset($_POST['submit'])){

		if(!empty($_POST['capacitate'])){

			$capacitate = $_POST['capacitate'];
			$query = "SELECT a.nume, a.prenume FROM angajati a JOIN autovehicule au ON a.ID_Angajat = au.ID_Angajat and au.Capacitate > '$capacitate'";
			$result = mysqli_query($conn, $query) or die(mysqli_error($conn));

			if($result){
					echo "<h3 font-size: 5px;'>", 'Soferii care conduc un autovehicul cu o capacitate mai mare decat cea introdusa sunt: ', '</h3>';
					foreach ($result as $key) {
					echo "<h3 font-size: 5px;'>",'--->', $key['nume'], ' ', $key['prenume'], '</h3>';
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
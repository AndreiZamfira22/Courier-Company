<?php 
include "db_conn.php"

 ?>
<?php include "includes/header.php" ?>
<body>
	 <link rel="stylesheet" type="text/css" href="style1.css">
	 <?php include "includes/nav.php"?>
<?php
	if(isset($_POST['submit'])){

		if(!empty($_POST['departament'])){

			$departament = $_POST['departament'];
			$query = "SELECT a.nume, a.prenume FROM angajati a JOIN departamente d ON a.ID_Departament = d.ID_Departament and d.Nume = '$departament'";
			$result = mysqli_query($conn, $query) or die(mysqli_error($conn));

			if($result){
					echo "<h3 font-size: 5px;'>", 'Angajatii care lucreaza in departamentul introdus sunt: ', '</h3>';
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
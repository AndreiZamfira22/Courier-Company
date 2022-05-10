<?php 
include "db_conn.php"

 ?>
<?php include "includes/header.php" ?>
<body>
	 <link rel="stylesheet" type="text/css" href="style1.css">
	 <?php include "includes/nav.php"?>
<?php
	if(isset($_POST['submit'])){

		if(!empty($_POST['oras'])){

			$oras = $_POST['oras'];
			$query = "SELECT c.Nume_destinatar, c.Prenume_destinatar FROM colet c JOIN depozit d on c.ID_depozit = d.ID_depozit where d.Localitate = '$oras'";
			$result = mysqli_query($conn, $query) or die(mysqli_error($conn));

			if($result){
					echo "<h3 font-size: 5px;'>", 'Destinatarii care au coletul in orasul introdus sunt: ', '</h3>';
					foreach ($result as $key) {
					echo "<h3 font-size: 5px;'>",'--->', $key['Nume_destinatar'], ' ', $key['Prenume_destinatar'], '</h3>';
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
<?php

	include "db_conn.php";

	
	if(isset($_POST['submit'])){

		if(!empty($_POST['id_autovehicul']) && !empty($_POST['id_angajat']) && !empty($_POST['marca']) && !empty($_POST['model']) && !empty($_POST['numar_de_inmatriculare']) && !empty($_POST['capacitate'])){

			$id_autovehicul = $_POST['id_autovehicul'];
			$id_angajat = $_POST['id_angajat'];
			$marca = $_POST['marca'];
			$model = $_POST['model'];
			$numar_de_inmatriculare = $_POST['numar_de_inmatriculare'];
			$capacitate = $_POST['capacitate'];

			$query = "insert into autovehicule(id_autovehicul, id_angajat, marca, model, numar_de_inmatriculare, capacitate) values ('$id_autovehicul', '$id_angajat', '$marca', '$model', '$numar_de_inmatriculare', '$capacitate')";
			$run = mysqli_query($conn, $query) or die(mysqli_error($conn));

			if($run){
				   	header("Location: autovehicul.php");
				   	exit();
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
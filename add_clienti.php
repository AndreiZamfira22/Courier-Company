<?php

	include "db_conn.php";

	
	if(isset($_POST['submit'])){

		if(!empty($_POST['id_client']) && !empty($_POST['nume']) && !empty($_POST['prenume']) && !empty($_POST['strada']) && !empty($_POST['numar']) && !empty($_POST['localitate']) && !empty($_POST['judet'])&& !empty($_POST['cod_postal']) && !empty($_POST['nr_telefon']) && !empty($_POST['email']) ){

			$id_client = $_POST['id_client'];
			$nume = $_POST['nume'];
			$prenume = $_POST['prenume'];
			$strada = $_POST['strada'];
			$numar = $_POST['numar'];
			$localitate = $_POST['localitate'];
			$judet = $_POST['judet'];
			$cod_postal = $_POST['cod_postal'];
			$nr_telefon = $_POST['nr_telefon'];
			$email = $_POST['email'];

			$query = "insert into clienti(id_client, nume, prenume, strada, numar, localitate, judet, cod_postal, nr_telefon, email) values ('$id_client', '$nume', '$prenume','$strada', '$numar', '$localitate', '$judet', '$cod_postal', '$nr_telefon', '$email')";
			$run = mysqli_query($conn, $query) or die(mysqli_error($conn));

			if($run){
				   	header("Location: clienti.php");
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
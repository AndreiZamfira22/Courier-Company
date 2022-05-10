<?php

	include "db_conn.php";

	
	if(isset($_POST['submit'])){

		if(!empty($_POST['email']) && !empty($_POST['nr_telefon']) ){

			$email = $_POST['email'];
			$nr_telefon = $_POST['nr_telefon'];


			$query = "update clienti set nr_telefon = '$nr_telefon' where email = '$email'";
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
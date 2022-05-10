<?php 
session_start();
if (isset($_SESSION['ID_Angajat']) && isset($_SESSION['Email'])) {

 ?>
<?php include "includes/header.php" ?>
<body>
	 <link rel="stylesheet" type="text/css" href="style1.css">
	<?php include "includes/nav.php" ?>
     <h1>Bine ai venit, <?php echo $_SESSION['Prenume'], '!'; ?></h1>
</body>
</html>

<?php 
}else{
     header("Location: index.php");
     exit();
}
 ?>
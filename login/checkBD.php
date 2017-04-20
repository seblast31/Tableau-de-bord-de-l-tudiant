<?php
session_start();

$compte = $_POST['compte'];
$password = $_POST['password'];

$conn = mysql_connect("localhost","root","") or die("error connection.");  
mysql_select_db("test",$conn) or die("error database nom"); 

$check_query = "select * from etudiant where email like '$compte' and num_etudiant='$password'; ";
$result = mysql_query($check_query,$conn);
$count = mysql_num_rows($result);

if($count == 1){
	$_SESSION['compte']=$compte;
	while( $row = mysql_fetch_array($result,MYSQL_ASSOC) ){
		$_SESSION['nom']=$row['nom'];
		$_SESSION['prenom']=$row['prenom'];
		$_SESSION['speciality']=$row['id_formation'];
		$_SESSION['promo']=$row['id_promo'];
	}
	echo "true";
}	
else{
	echo "false";
}

?>

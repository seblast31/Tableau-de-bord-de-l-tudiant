<?php
    if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 
?>

<!DOCTYPE html>
<html lang="en">

<script type="text/javascript">
var isCorrect=false;

function checkCompte()
{	
	var xmlhttp;
	isCorrect=false
	
	if (window.XMLHttpRequest){// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
	}
	else{// code for IE6, IE5
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	var comte = document.getElementById("compte").value;
	var password = document.getElementById("password").value;
	
	
	xmlhttp.open("POST","checkBD.php",false);
	xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	var vars = "compte="+comte+"&password="+password;	
	
	xmlhttp.onreadystatechange = function callback(){
		document.getElementById("test_input").innerHTML = "callback begin";
		temp=2;
		if(xmlhttp.readyState == 4 &&  xmlhttp.status == 200 ) {
			var return_data = xmlhttp.responseText;
			//alert(return_data);
			if(return_data.localeCompare("true") == 0){
				document.getElementById("test_input").innerHTML ="true";
				isCorrect=true;				
			}
			else{
				document.getElementById("test_input").innerHTML = "invalid compte or password. Please try again";
				isCorrect=false;
			}
		}
	};

	xmlhttp.send(vars);
	return isCorrect;
}


</script>

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../sources/polytech.png">

    <title>Intranet Polytech Paris-Sud - Connexion</title>

    <!-- Bootstrap core CSS -->
    <link href="../sources/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../sources/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  

  <body>
	
    <div class="container">

      <form class="form-signin" onsubmit="return checkCompte()" method="POST" action="../page_perso/index.php">
        <h2 class="form-signin-heading">Entrez vos identifiants</h2>
        <label for="inputEmail" class="sr-only">Email</label>
        <input type="email" name="compte" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
        <label for="inputPassword" class="sr-only">Mot de passe</label>
        <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Enregistrer mes identifiants
          </label>
		
		<p id="test_input"><br></p>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Se connecter</button>
		
      </form>

    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../src/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>

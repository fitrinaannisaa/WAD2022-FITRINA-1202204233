<?php

$database = mysqli_connect("127.0.0.1:4306", "root", "", "wad_modul4_fitrina");
session_start();
if(isset($_POST["submit"])){
	$email = $_POST['email'];
	$password = $_POST['pass'];

	$query = mysqli_query($database, "SELECT * FROM user_fitrina WHERE email = '$email'");
	$result = mysqli_fetch_assoc($query);
	if(mysqli_num_rows($query) > 1){
	
		
		if($password == $result["password"]){
			$_SESSION['login'] = true;
			$_SESSION['id'] = $result["id"];
			header("Location: Home-Fitrina.php");
			
		}

		
	}


}
?>

<!doctype html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Bootstrap CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

	<!-- My Css -->
	<link rel="stylesheet" href="../styles/index.css">

	<title>Home</title>
</head>

<body>
	<main>
		<div class="row align-items-center">
			<div class="col" style="height:100vh;">
				<img src="../asset/images/car.jpg" alt="" height="100%" width="100%">
			</div>
			<div class="col">
				<div class="container">
					<h2 class="fw-bold">Login</h2>

					<form action="" method="post">
					
						
						<div class="mb-3">
							<label for="email" class="form-label">Email</label>
							<input type="email" class="form-control" id="email" name="email">
						</div>
						
		
			
						<div class="mb-3">
							<label for="pass" class="form-label">Kata Sandi</label>
							<input type="password" class="form-control" id="pass" name="pass">
						</div>
						
		
						
						<div class="mb-3 form-check">
							<input type="checkbox" class="form-check-input" id="exampleCheck1">
							<label class="form-check-label" for="exampleCheck1">Remember Me</label>
						</div>
						
						
						<input type="submit" class="btn btn-primary" value="Login" name="submit">
						<p>Anda belum punya akun? <a href="Register-Fitrina.php">Daftar</a></p>
					</form>
				</div>
			</div>
		</div>
	</main>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
	</script>
</body>

</html>
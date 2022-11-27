<?php
require "../Config/connector.php";
if(isset($_POST["submit"])){
  $email = $_POST["email"];
  $nama = $_POST["nama"];
  $nomor = $_POST["nomor"];
  $password = $_POST["pass"];
  $compare = $_POST["katasandi"];
  
  if($password !== $compare){
    echo "
    <script>
        alert('Kata sandi tidak selaras');
    </script>
    ";
  }

  $query= "INSERT INTO user_fitrina VALUES ('id','$nama','$email','$nomor','$password')";
  mysqli_query($db, $query);
  header("Location: Login-Fitrina.php");
}
?>

<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

  <!-- My Css -->
  <link rel="stylesheet" href="../asset/styles/index.css">

  <title>Home</title>
</head>

<body>
  
  <main>
  <div class="row align-items-center">
        <div class="col" style="height: 100vh;">
            <img src="../Asset/images/car.jpg" alt="" height="100%" width="80%" class="img-fluid">
        </div>

        <div class="col">
          <h2 class="fw-bold">Register</h2>
          <form action="" method="post">
          <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="text" class="form-control" id="email" name="email">
                    </div>
                    <div class="mb-3">
                        <label for="nama" class="form-label">Nama</label>
                        <input type="text" class="form-control" id="nama" name="nama">
                    </div>
                    <div class="mb-3">
                        <label for="nomor" class="form-label">Nomor Handphone</label>
                        <input type="text" class="form-control" id="nomor" name="nomor">
                    </div>
                    <div class="mb-3">
                        <label for="pass" class="form-label">Kata Sandi</label>
                        <input type="password" class="form-control" id="pass" name="pass">
                    </div>
                    <div class="mb-3">
                        <label for="katasandi" class="form-label">Konfirmasi Kata Sandi</label>
                        <input type="password" class="form-control" id="katasandi" name="katasandi">
                    </div>
                    <input type="submit" class="btn btn-primary" name="submit"></input>
                    </form>
        </div>
    </div> 

  </main>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
  </script>
</body>

</html>
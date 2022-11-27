<?php

    include('connector.php');
    $nama = $_POST["nama"];
    $pemilik = $_POST["pemilik"];
    $merk = $_POST["merk"];
    $tanggal = $_POST["tanggal"];
    $deskripsi = $_POST["deskripsi"];
    $query= mysqli_query($db,"INSERT INTO showroom_fitrina_table (nama_mobil, pemilik_mobil, merk_mobil, tanggal_beli, deskripsi) VALUES('$nama', '$pemilik', '$merk', '$tanggal', '$deskripsi')");
  
    if ($query)  {
        echo "<script>alert('Data telah ditambahkan')</script>";
        echo "<meta http-equiv= 'refresh' content='1 url=index.php'>";
    } else {
        echo "<script>alert('Gagal ditambahkan')</script>";
        echo "<meta http-equiv= 'refresh' content='1 url=index.php'>";
    }
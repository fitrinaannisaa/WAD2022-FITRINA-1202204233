<?php
require "connector.php";

function insert($data){
    global $db;

    $nama = $data["nama"];
    $pemilik = $data["pemilik"];
    $merk = $data["merk"];
    $tanggal = $data["tanggal"];
    $deskripsi = $data["deskripsi"];

    $query="INSERT INTO showroom_fitrina_table VALUES('', '$nama', '$pemilik', '$merk', '$tanggal', '$deskripsi', 'mobil.jpg', 'Lunas')";
    mysqli_query($db, $query);
    return mysqli_affected_rows($db);
};
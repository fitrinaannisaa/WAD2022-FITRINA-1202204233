<?php
$db = mysqli_connect("localhost", "root", "", "showroom_fitrina_table", 4306);

function showAll(){
    global $db;

    $query = "SELECT * FROM showroom_fitrina_table";
    $command = mysqli_query($db, $query);
    $penampung = [];

    while($datas=mysqli_fetch_assoc($command)){
        $penampung[] = $datas;
    }

    return $penampung;



}

?>
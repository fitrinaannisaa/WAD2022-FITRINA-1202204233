<?php
$db = mysqli_connect("localhost", "root", "", "wad_modul4_fitrina", 4306);

function showAll(){
    global $db;

    $query = "SELECT * FROM wad_modul4_fitrina";
    $command = mysqli_query($db, $query);
    $penampung = [];

    while($datas=mysqli_fetch_assoc($command)){
        $penampung[] = $datas;
    }

    return $penampung;



}
function profile($id)
{
        global $database;

        $query = "SELECT * FROM user_faris WHERE id=$id";
        $dataprofile = mysqli_query($database, $query);
        $baris = [];

        while ($row = mysqli_fetch_assoc($dataprofile)){
                $baris[]=$row;
        };

        return $baris;

}; 
?>
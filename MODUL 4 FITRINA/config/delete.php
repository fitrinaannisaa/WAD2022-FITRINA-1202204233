<?php
require "./connector.php";

$id = $_GET["id"];

function delete(){
    global $db;
    global $id;

    $query = "DELETE FROM showroom_fitrina_table WHERE id_mobil=$id";
    mysqli_query($db, $query);

    return mysqli_affected_rows($db);
}

if(delete($id)){
    header("Location: ../pages/ListCar-Fitrina.php");
    exit;
}

?>
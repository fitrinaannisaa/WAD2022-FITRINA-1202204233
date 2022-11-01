<?php
$cars = [
    [
        "nama" => "Toyota Rush",
        'image' => 'rush'
    ],
    [
        "nama" => "Honda Brio",
        'image' => 'brio'
    ],
    [
        "nama" => "Toyota Innova",
        'image' => 'innova'
    ],
]

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

</head>

<body>

    <header>
        <nav class="navbar navbar-expand-lg bg-dark ">
            <div class="container-fluid">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-center" id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                        <a class="nav-link active text-light" aria-current="page" href="FITRINA_HOME.php">HOME</a>
                        <a class="nav-link text-light" href="FITRINA_BOOKING.php">BOOKING</a>
                    </div>
                </div>
            </div>
        </nav>
    </header>

    <msection class="vh-100">
        <div class="welcome">
            <center>
                <h2>Rent your car now!</h2>
            </center>
        </div>
        <div class="container-fluid mt-3">
            <div class="row align-items-center">
                <div class="col-6">
                    <?php if (isset($_GET['image'])) : ?>
                        <img src="https://www.toyota.astra.co.id/sites/default/files/2021-08/1-white.png" class="img-fluid">

                    <?php else : ?>
                        <img src="https://www.toyota.astra.co.id/sites/default/files/2021-08/1-white.png" class="img-fluid">
                    <?php endif; ?>
                </div>
                <div class="col-6">
                    <form action="mybooking.php">
                        <div class="form-group">
                            <label for="Nama">Name</label>
                            <input type="text" class="form-control" id="Nama" placeholder="">
                            <div class="form-group">
                                <label for="date">Book Date</label>
                                <input type="date" class="form-control" id="date" placeholder="">
                            </div>
                            <div class="form-group">
                                <label for="time">Start Time</label>
                                <input type="time" class="form-control" id="time" placeholder="">
                                <div class="form-group">
                                    <label for="day">Duration (Days)</label>
                                    <input type="text" class="form-control" id="Nama" placeholder="">
                                    <div class="form-group">
                                        <label for="day">Car Type</label>
                                        <select class="form-select" id="choice">
                                            <?php if (!isset($_GET['image'])) : ?>
                                                <?php foreach ($cars as $car) : ?>
                                                    <option value="<?= $car['nama'] ?>"><?= $car['nama'] ?></option>
                                                <?php endforeach; ?>
                                            <?php else : ?>
                                                <option value="<?= $_GET['image'] ?>"><?= $_GET['image'] ?></option>
                                            <?php endif; ?>
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="phone">Phone Number</label>
                                        <input type="input" class="form-control" id="phone" placeholder="">
                                        <br>
                                        <p>Add Service(s)
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                            <label class="form-check-label" for="exampleCheck1">Health protocol/Rp25.000</label>
                                        </div>
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                            <label class="form-check-label" for="exampleCheck1">Driver/Rp100.000</label>
                                        </div>
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                            <label class="form-check-label" for="exampleCheck1">Fuel Filled/Rp 250.000</label>
                                        </div>
                                        <div class="button">
                                            <div class="d-grid gap-2">
                                                <input type="submit" name="submit" class="btn btn-success" value="Book Now">
                                            </div>

                    </form>
                </div>
            </div>
        </div>
    </section>
    <br>
    <footer class="text-center bg-light text-black py-3">
        <a data-bs-toggle="modal" data-bs-target="#exampleModal">Created by FITRINA ANNISA MUSTADA_1202204233</a>
    </footer>
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Copyright</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    Nama: Fitrina Annisa Mustada<br />
                    NIM: 1202204233<br />
                    Kelas: SI4406
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js"
        integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk"
        crossorigin="anonymous"></script>

</body>

</html>
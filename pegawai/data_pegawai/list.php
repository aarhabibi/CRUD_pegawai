<?php 

    $connection = new mysqli("localhost","root","","data_pegawai");
    $data       = mysqli_query($connection, "select * from tbl_pegawai");
    $data       = mysqli_fetch_all($data, MYSQLI_ASSOC);

    echo json_encode($data);

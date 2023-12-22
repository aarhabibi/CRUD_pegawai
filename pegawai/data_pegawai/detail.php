<?php 

    $connection = new mysqli("localhost","root","","data_pegawai");
    $data       = mysqli_query($connection, "select * from tbl_pegawai where id=".$_GET['id']);
    $data       = mysqli_fetch_array($data, MYSQLI_ASSOC);

    echo json_encode($data);
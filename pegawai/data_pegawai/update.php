<?php

    $connection = new mysqli("localhost", "root", "", "data_pegawai");
    $nama      = $_POST['nama']; 
    $email = $_POST['email'];
    $pass    = $_POST['pass'];
    $id         = $_POST['id'];

    $result = mysqli_query($connection, "update tbl_pegawai set nama='$nama', email='$email', pass='$pass' where id='$id'");
        
    if($result){
        echo json_encode([
            'message' => 'Data edit successfully'
        ]);
    }else{
        echo json_encode([
            'message' => 'Data Failed to update'
        ]);
    }
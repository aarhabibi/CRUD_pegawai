<?php

    $connection = new mysqli("localhost", "root", "", "data_pegawai");
    $nama      = $_POST['nama']; 
    $posisi_lamaran = $_POST['posisi_lamaran'];
    $status    = $_POST['status'];
    $id         = $_POST['id'];

    $result = mysqli_query($connection, "update tbl_pegawai set nama='$nama', posisi_lamaran='$posisi_lamaran', status='$status' where id='$id'");
        
    if($result){
        echo json_encode([
            'message' => 'Data edit successfully'
        ]);
    }else{
        echo json_encode([
            'message' => 'Data Failed to update'
        ]);
    }
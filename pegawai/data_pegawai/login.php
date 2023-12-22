<?php

require "koneksi.php";

if($_SERVER['REQUEST_METHOD'] == "POST"){
    $response = array();
    $email = $_POST['email'];
    $pass = $_POST['pass'];
    
    $cek = "SELECT * FROM tbl_pegawai WHERE email='$email' and pass='$pass'";
    $result = mysqli_fetch_array(mysqli_query($con, $cek));

    if(isset($result)){
        $response['value'] = 1;
        $response['message'] = 'Login Berhasil';
        // echo json_encode($response);
        echo json_encode($result);

    } else{
            $response['value'] = 0;
            $response['message'] = "login gagal";
            echo json_encode($response);
        }
    }

?>

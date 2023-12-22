<?php

    $connection = new mysqli("localhost", "root", "", "data_pegawai");
//tabel utama
    $nama      = $_POST['nama']; 
    // $tempat_lahir    = $_POST['tempat_lahir'];
    // $tanggal_lahir    = $_POST['tanggal_lahir'];
    // $no_ktp    = $_POST['no_ktp'];
    // $status_kawin    = $_POST['status_kawin'];
    // $jenis_kelamin    = $_POST['j_kelamin'];
    // $agama    = $_POST['agama'];
    // $alamat_ktp    = $_POST['alamat_ktp'];
    // $alamat_tinggal    = $_POST['alamat_tinggal'];
    // $gol_darah    = $_POST['gol_darah'];
    // $posisi_lamaran    = $_POST['posisi_lamaran'];
    // $no_tlp    = $_POST['no_tlp'];
    // $no_darurat    = $_POST['nomor_darurat'];
    // $skill    = $_POST['skill'];
    // $kesediaan    = $_POST['kesediaan'];
    // $penghasilan    = $_POST['penghasilan'];
    $email    = $_POST['email'];
    $pass    = $_POST['pass'];
    // $date       = date('Y-m-d');
    $status    = $_POST['status'];
    
//riwayat pendidikan
    // $jenjang_pendidikan    = $_POST['jenjang_pendidikan'];
    // $nama_institusi    = $_POST['nama_institusi'];
    // $jurusan    = $_POST['jurusan'];
    // $tahun_lulus    = $_POST['tahun_lulus'];
    // $ipk    = $_POST['ipk'];

//riwayat pekerjaan
    // $nama_perusahaan    = $_POST['nama_perusahaan'];
    // $posisi    = $_POST['posisi'];
    // $pendapatan    = $_POST['pendapatan'];
    // $tahun    = $_POST['tahun'];
    
//riwayat pelatihan
    // $nama_pelatihan    = $_POST['nama_pelatihan'];
    // $sertifikat    = $_POST['sertifikat'];
    // $tahun    = $_POST['tahun'];


    // $pendidikan=mysqli_query($connection, "insert into riwayat_pendidikan set jenjang_pendidikan='', nama_institusi='', jurusan='', tahun_lulus='', ipk=''");
    // $pekerjaan=mysqli_query($connection, "insert into riwayat_pekerjaan set nama_perusahaan='', posisi='', pendapatan='', tahun=''");
    // $pelatihan=mysqli_query($connection, "insert into riwayat_pelatihan set nama_pelatihan='', sertifikat=', tahun=''");
    $result = mysqli_query($connection, "insert into tbl_pegawai set nama='$nama', email='$email', pass='$pass', status='$status'");
    
    if($result){
        echo json_encode([
            'message' => 'Data input successfully'
        ]);
        // echo json_encode($result);
    }else{
        echo json_encode([
            'message' => 'Data Failed to input'
        ]);
    }

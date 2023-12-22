<?php

define('HOST', 'localhost');
define('USER', 'root');
define('PASS', '');
define('DB', 'data_pegawai');

$con = mysqli_connect(HOST, USER, PASS, DB) or die('tidak bisa konek');

?>
<?php

header("Access-Control-Allow-Origin: header");
header("Access-Control-Allow-Origin: *");

include 'koneksi.php';

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $response = array();
    $username = $_POST['username'];
    $password = md5($_POST['password']);

    $cek = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";
    $result = mysqli_query($koneksi, $cek);

    if ($result && mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        $response['value'] = 1;
        $response['message'] = "berhasil login";
        $response['username'] =  $row['username'];
        $response['fullname'] =  $row['fullname'];
        $response['email'] = $row['email'];
        $response['id'] =  $row['id'];
        echo json_encode($response);
    } else {
        $response['value'] = 0;
        $response['message'] = "Gagal login";
        echo json_encode($response);
    }
}
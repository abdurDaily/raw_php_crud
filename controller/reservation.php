<?php
session_start();
include "../database/env.php";


$name = $_REQUEST['name'];
$email = $_REQUEST['email'];
$phone = $_REQUEST['phone'];
$date = $_REQUEST['date'];
$time = $_REQUEST['time'];
$message = $_REQUEST['message'];


$sql = "INSERT INTO reservation (name, email, phone, date, time, details) VALUES ('$name', '$email','$phone','$date', '$time', '$message')";

$insertData = mysqli_query($conn, $sql);

if($insertData){
    
    $_SESSION['msg'] = 'Your seat has been reserved';
    header("Location:../index.php?#book-a-table");
    
}else{
    $_SESSION['msg'] = 'Something went wrong';
    header("Location:../index.php?#book-a-table");
}



?>
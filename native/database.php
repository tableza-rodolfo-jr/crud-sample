<?php

$host = "localhost";
$user ="root";
$pass = "12345";
$dbname = "native_student";

$conn = new mysqli($host, $user, $pass ,$dbname);

if($conn->connect_error){
    echo $conn->connect_error;
}else {
    
}


?>
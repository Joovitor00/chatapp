<?php
  $hostname = "localhost";
  $username = "root";
  $password = "";
  $dbname = "chatapp";

  $conn = mysqli_connect($hostname, $username, $password, $dbname);
  if(!$conn){
    echo "Erro".mysqli_connect_error();
  }
?>

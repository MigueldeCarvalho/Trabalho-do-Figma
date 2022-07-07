<?php

$server = "127.0.0.1:3307"; //servidor
$user = "root"; //usuario
$password = ""; //senha
$db = "vapt_vupt"; //banco de dados

$conn = mysqli_connect($server, $user, $password, $db) or die ('Não foi possivel conectar'); //conexão com o banco

//echo('conec ok');

?>
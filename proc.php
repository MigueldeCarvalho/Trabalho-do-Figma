<?php

include_once('connect.php');

$id = null;
$nome = '';
$email = '';
$senha = '';
$telefone = '';
$cpf = '';
$endereco = '';

$Enviar = '';

if(!empty($_POST['nome'])){
    $nome = $_POST['nome'];
}

if(!empty($_POST['email'])){
    $email = $_POST['email'];
}

if(!empty($_POST['senha'])){
    $senha = $_POST['senha'];
}

if(!empty($_POST['telefone'])){
    $telefone = $_POST['telefone'];
}

if(!empty($_POST['cpf'])){
    $cpf = $_POST['cpf'];
}

if(!empty($_POST['endereco'])){
    $endereco = $_POST['endereco'];
}

$res_inserir = "INSERT INTO usuario(id_usuario,email_usuario,senha_usuario,telefone_usuario,nome_usuario,cpf_usuario,endereco_usuario) VALUES ('$id','$email', '$senha', '$telefone', '$nome', '$cpf', '$endereco')";
$resposta_inserir = mysqli_query($conn, $res_inserir);
header('Location: tela1.html');

?>
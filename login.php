
<?php 

session_start(); 

include "conexao.php";

if (isset($_POST['email']) && isset($_POST['senha'])) {

    function validate($data){

       $data = trim($data);

       $data = stripslashes($data);

       $data = htmlspecialchars($data);

       return $data;

    }

    $email = validate($_POST['email']);

    $senha = validate($_POST['senha']);

    if (empty($email)) {

        header("Location: login1.php?error=Preencha o email");

        exit();

    }else if(empty($senha)){

        header("Location: login1.php?error=Preencha a senha");

        exit();

    }else{

        $sql = "SELECT * FROM usuario WHERE email_usuario ='$email' AND senha_usuario = '$senha'";

        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) === 1) {

            $row = mysqli_fetch_assoc($result);

            if ($row['email_usuario'] === $email && $row['senha_usuario'] === $senha) {

                echo "Logged in!";

                $_SESSION['email_usuario'] = $row['email_usuario'];

                $_SESSION['nome_usuario'] = $row['nome_usuario'];

                $_SESSION['id_usuario'] = $row['id_usuario'];

                header("Location: tela2.html");

                exit();

            }else{

                header("Location: login1.php?error=Email ou senha incorreto");

                exit();

            }

        }else{

            header("Location: login1.php?error=Email ou senha incorreto");

            exit();

        }

    }

}else{

    header("Location: login1.php");

    exit();

}
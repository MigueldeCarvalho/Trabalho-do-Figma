<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="login.css">
    <title>Login</title>
</head>

<body>

    <div class="login_div">
        <a id="voltar" href="tela1.html"> <img  src="voltar.png" alt="voltar"></a>
        
    
        <form id="formulario_login" action="login.php" method="post">
            <img src="pessoa.png" alt="pessoa">
            <h1 id="titulo">Login</h1>
            <div class="msg"></div>

            <div class="campos_login">
                <label for="email"><img id="email_img"src="email1.png"></label>
                <input type="text" id="email" name="email" placeholder="Email" class="inputemail" />
                <small id="textemail"></small>
                <hr>
                <label for="senha"><img id="senha_img"src="senha1.png"></label>
                <input type="password" id="senha" name="senha" placeholder="Senha" class="inputsenha" />
                <small id="textsenha"></small>
                <hr>
            </div>

            <input id="botao" class="btn_login" type="submit" value="Login"  />
            <br />
            <small id="textFormulario"></small>
        </form>
        <?php if (isset($_GET['error'])) { ?>

        <p class="error"><?php echo $_GET['error']; ?></p>

        <?php } ?>
    </div>

</body>

</html>
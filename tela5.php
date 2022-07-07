
<?php 

session_start();

if (isset($_SESSION['id_usuario']) && isset($_SESSION['nome_usuario'])) {

?>

    <!DOCTYPE html>
    <html lang="pt-br">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="CSS.css">
        <link rel="shortcut icon" href="vapt.png">
        <title>Tela5</title>

    </head>

    <body>
        <div class="topo_tela5">
            Meu perfil
        </div>

        <div class="texto_tela5">
            <div>
                <a href="config.html">
                    <img src=pato.png alt="pato" width="101" height="84">
                </a>
            </div>
            <div class="perfil_tela5">
                <?php echo $_SESSION['nome_usuario']; ?>
                <a href="logout.php">Logout</a>
            </div>
        </div>

        <div class="principal_tela5">
            <button class="botao_tela5">
                <div class="icone_principal_tela5">
                    <img src=chats.png alt="Chats" width="61" height="62">
                </div>
                <div class="botao_descricao_tela5">
                    Chats
                    <h2 id="h2_tela5">Minhas Conversas</h2><!--Utilizado para inserir um texto.Cabeçalho de prioridade 2-->
                </div>
            </button>

            <button class="botao_tela5">
                <div class="icone_principal_tela5">
                    <img src=notificacao.png alt="Notificações" width="64" height="64">
                </div>
                Notificações
            </button>

            <button class="botao_tela5">
                <div class="icone_principal_tela5">
                    <img src=carteira.png alt="Carteira" width="62" height="62">
                </div>
                <div class="botao_descricao_tela5">
                    Carteira
                    <h2 id="h2_tela5"> Meu saldo</h2>
                </div>
            </button>

            <button class="botao_tela5">
                <div class="icone_principal_tela5">
                    <img src=cupons.png alt="Cupons" width="61" height="61">
                </div>
                <div class="botao_descricao_tela5">
                    Cupons
                    <h2 id="h2_tela5">Cupons de Desconto Disponíveis</h2>
                </div>
            </button>

            <button class="botao_tela5">
                <div class="icone_principal_tela5">
                    <img src=favoritos.png alt="Favoritos" width="57" height="57">
                </div>
                <div class="botao_descricao_tela5">
                    Favoritos
                    <h2 id="h2_tela5">Restaurantes Preferidos</h2>
                </div>
            </button>

            <button class="botao_tela5">
                <div class="icone_principal_tela5">
                    <img src=fidelidade.png alt="Fidelidade" width="64" height="64">
                </div>
                Fidelidade
            </button>
        </div>


        <div class="rodape">
            <button class="botao_rodape">
                <div>
                    <a href="tela2.html">
                        <img src=inicio.png alt="inicio" width="47" height="47">
                    </a>
                </div>
                Ínicio
            </button>

            <button class="botao_rodape">
                <div>
                    <a href="tela3.html">
                        <img src=busca.png alt="busca" width="42" height="42">
                    </a>
                </div>
                Busca
            </button>

            <button class="botao_rodape">
                <div>
                    <a href="tela4.html">
                        <img src=pedidos.png alt="pedidos" width="42" height="50">
                    </a>
                </div>
                Pedidos
            </button>
            <button class="botao_rodape">
                <div>
                    <a href="tela5.php">
                        <img src=perfil.png alt="perfil" width="54" height="49">
                    </a>
                </div>
                Perfil
            </button>
        </div>


    </body>

    </html>
<?php 

}else{

     header("Location: tela1.html");

     exit();

}

 ?>
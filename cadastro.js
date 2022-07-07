const formulario = document.getElementById('formulario')
const nome = document.getElementById('nome')
const textNome = document.getElementById('textNome')
const email = document.getElementById('email')
const textEmail = document.getElementById('textEmail')
const senha = document.getElementById('senha')
const textSenha = document.getElementById('textSenha')
const botao = document.getElementById('botao')
const textFormulario = document.getElementById('textFormulario')
const telefone = document.getElementById('telefone')
const textTelefone = document.getElementById('textTelefone')

botao.addEventListener('click', function (e) {
    e.preventDefault()  
    
    if(nome.value == '' || email.value == '' || senha.value == '' || telefone.value == '' || cpf.value == ''  || endereco.value == '' ){
        textFormulario.textContent = 'Você precisa preencher todos os campos'
    }
    else {
        document.querySelector('form').submit()
    }
        })
    
        


email.addEventListener('keyup', function () {
    if(validarEmail(email.value) !== true){
        textEmail.textContent = 'O formato do email deve ser com letras minúsculas ex.: teste@gmail.com'    
    }else{
        textEmail.textContent = ''
    }
}) 

function validarEmail(e_mail){
    let padraoEmail = /^[a-z0-9.]+@[a-z0-9]+\.([a-z]+)?$/
    return padraoEmail.test(e_mail)
}

senha.addEventListener('keyup', function() {
    if(validarSenha(senha.value) !== true){
        textSenha.textContent = 'O formato da senha deve ter 6 caracteres, com 1 letra maiúscula, 1 minúscula, 1 número e 1 carctere especial. ex.: Br@sil2022'    
    }else{
        textSenha.textContent = ''
    }
})

function validarSenha(senhaValor){
    let padraoSenha = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[$*&@#])[0-9a-zA-Z$*&@#]{6,}$/

    return padraoSenha.test(senhaValor)  
}

telefone.addEventListener('keyup', function() {
    if(validarTelefone(telefone.value) !== true){
        textTelefone.textContent = 'O formato do telefone deve ser (##) #####-####'    
    }else{
        textTelefone.textContent = ''
    }
})

function validarTelefone(telefoneValor){
    let padraoTelefone = /^\([1-9]\d\)\s9?\d{4}-\d{4}$/

    return padraoTelefone.test(telefoneValor)
}

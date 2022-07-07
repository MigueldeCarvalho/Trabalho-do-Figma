let db = openDatabase('BD_VAPT_VUPT', 'v1.0', 'vapt_vupt_banco', 2 * 1024 * 1024)

db.transaction(function (tx) {
    tx.executeSql('CREATE TABLE IF NOT EXISTS vapt_vupt(id INTEGER PRIMARY KEY, nome VARCHAR(25), email VARCHAR(40), senha VARCHAR(40), telefone VARCHAR(40), cpf VARCHAR(40), endereco VARCHAR(40))')
})

const res = document.getElementById('res')

function listar() {
    db.transaction(function (tx) {
        tx.executeSql('SELECT * FROM vapt_vupt', [], function (linhas, resultado) {

            linhas = resultado.rows.length
            console.log(linhas)

            for (let i = 0; i < linhas; i++) {
                console.log(resultado.rows.item(i).id,  resultado.rows.item(i).nome, resultado.rows.item(i).email, resultado.rows.item(i).senha, resultado.rows.item(i).telefone, resultado.rows.item(i).cpf, resultado.rows.item(i).endereco)
                
                res.innerHTML += `Id = ${resultado.rows.item(i).id} &emsp;`
                res.innerHTML += `Nome = ${resultado.rows.item(i).nome} &emsp;`
                res.innerHTML += `Email = ${resultado.rows.item(i).email} &emsp;`
                res.innerHTML += `Senha = ${resultado.rows.item(i).senha} &emsp;`
                res.innerHTML += `Telefone = ${resultado.rows.item(i).telefone} &emsp;`
                res.innerHTML += `CPF = ${resultado.rows.item(i).cpf} &emsp;`
                res.innerHTML += `Endereco = ${resultado.rows.item(i).endereco} &emsp;`
                res.innerHTML += '<br/>'
                res.innerHTML += '<br/>'
            }
            // for(i=0;i<linhas;i++){
            //     console.log(resultado.rows.item(i))
            // }
        })
    })
}
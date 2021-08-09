#language: pt

Funcionalidade: Consulta de dados a partir de um cep
Eu como usuário do sistema 
Quero digitar um cep
Para consultar os dados de um endereço

@consultacep
Cenário: Consulta de cep
Quando digitar um <cep>
Então será retornado os dados do endereço
Exemplos:

|cep    |
|"01010000"|
   


@invalido
Cenário: Consulta de CEP inválido
Quando digitar um <cep>
Então será retornada mensagem

Exemplos:
|cep         | 
|"2549999999"|


@get_users
Cenário: Validar GET API Users
    Quando faço uma requisição get para o serviço Users
    Então o serviço Users deve responder com 200
    E retorna a lista de usuários

@get_user_id
Cenário: Validar GET API Users
    Quando faço uma requisição get para o serviço Users passando o id
    Então o serviço Users deve responder com 200
    E retorna o usuário

@post_users
Cenário: Validar POST API Users
    Quando faço uma requisição POST para o serviço Users 
    Então o serviço Users deve responder com 200
    E retorna usuário criado      
    



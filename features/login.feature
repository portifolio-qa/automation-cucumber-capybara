#language:pt

Funcionalidade: Login
Para que eu possa gerenciar o sistema Ceap
Sendo um usuário previamente cadastrado
Posso acessar o sistema com o meu email e senha

@login_acesso
Cenario: Acesso
Quando eu faco login com "tony@stark.com" e "pwd123"
Então devo ser autenticado
E devo ver "Tony Stark" na area logada

@login_senha
Cenario: Senha
Quando eu faco login com "rosedias1" e "pw123"
Entao não devo ser autenticado
E devo ver a mensagem de alerta "Usuário e/ou senha inválidos."

Cenario: Usuário não existe
Quando eu faco login com "rosedias2" e "pw123"
Entao não devo ser autenticado
E devo ver a mensagem de alerta "Usuário e/ou senha inválidos."

Cenario: Email não informado
Quando eu faco login com "" e "pw123"
Entao não devo ser autenticado
E devo ver a mensagem de alerta "Email não informado"


Cenario: Senha não informado
Quando eu faco login com "teste@gmail.com" e ""
Entao não devo ser autenticado
E devo ver a mensagem de alerta "Senha não informada"
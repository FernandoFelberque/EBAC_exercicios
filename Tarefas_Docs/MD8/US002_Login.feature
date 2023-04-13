Funcionalidade: Login na plataforma  


Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos


Contexto:
Dado Que eu acesse a página de autenticação do portal EBAC


Cenário: Autenticação válida
Quando eu digitar o usuário "fernandofelberque@gmail.com"
E a senha "ferfel123"
Então Usuário é direcionado para a tela "Checkout"


Cenário: Usuário inexistente
Quando eu digitar o usuário "fernando@felberquegmailcom"
E a senha "ferfel123"
Então Exibir mensagem "Usuário inválido"


Cenário: Senha inválida
Quando eu digitar o usuário  "fernandofelberque@gmail.com"
E a senha "321"
Então Exibir mensagem "Senha inválida"




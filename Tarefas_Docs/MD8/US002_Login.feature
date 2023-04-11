Feature: Login na plataforma  


Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos


Background:
Given Que eu acesse a página de autenticação do portal EBAC


Scenario: Autenticação válida
When eu digitar o usuário "fernandofelberque@gmail.com"
And a senha "ferfel123"
Then Usuário é direcionado para a tela "checkout"


Scenario: Usuário inexistente
When eu digitar o usuário "fernando@felberquegmailcom"
And a senha "ferfel123"
Then Exibir mensagem "Usuário inválido"


Scenario: Senha inválida
When eu digitar o usuário  "fernandofelberque@gmail.com"
And a senha "321"
Then Exibir mensagem "Senha inválida"




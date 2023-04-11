Feature: Configurar produto

Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho, gosto e escolher a quantidade
Para depois inserir no carrinho

Background: 
Given Quando acessar pagina de um produto

Scenario: Configuracao de Produto e Quantidade valida
When Selecionar Size "XL"
And Selecionar Color "Orange" 
And Selecionar Quantidade "10"
Then Botao de adicionar ao carrinho torna-se "acessivel"

Scenario: Configuracao de Produto Invalida
When Selecionar Size "Null"
And Selecionar Color "Null" 
And Selecionar Quantidade "10"
Then Exibir mensagem "Por favor selecionar Size e Color do produto"

Scenario: Configuracao de Quantidade Invalida
When Selecionar Size "XS"
And Selecionar Color "red" 
And Selecionar Quantidade "15"
Then Exibir mensagem "Permitido apenas 10 produtos por venda"

Scenario: Botao de limpar
Given Selecionado Size, Color ou Quantidade de um produto
When Clicar no botao "Limpar"
Then Torna-se Size, Color e Quantidade "Null"
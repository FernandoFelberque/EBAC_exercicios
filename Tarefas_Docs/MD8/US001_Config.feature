Funcionalidade: Configurar produto

Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho, gosto e escolher a quantidade
Para depois inserir no carrinho

Contexto: 
Dado Ao acessar pagina de um produto

Cenário: Configuracao de Produto e Quantidade valida
Quando eu selecionar Tamanho e Cor
E Selecionar Quantidade "10"
Então Botao de adicionar ao carrinho torna-se "Acessivel"

Cenário: Configuracao de Produto Invalida
Quando eu deixar de selecionar Tamanho ou Cor
E Selecionar Quantidade "10"
Então Exibir mensagem "Por favor selecionar Tamanho e Cor do produto"

Cenário: Configuracao de Quantidade Invalida
Quando eu selecionar Tamanho e Cor
E Selecionar Quantidade "15"
Então Exibir mensagem "Permitido apenas 10 produtos por venda"

Cenário: Botao de limpar
Dado Selecionado Tamanho, Cor ou Quantidade de um produto
Quando Clicar no botao "Limpar"
Então Torna-se Tamanho, Cor e Quantidade "Vazio"
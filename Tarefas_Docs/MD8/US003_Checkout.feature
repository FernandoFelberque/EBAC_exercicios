Funcionalidade: Tela de cadastro - Checkout

Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Contexto:
Dado Ao acessar a pagina de Checkout

Esquema do Cenário: Todos Dados Válidos
Quando Usuário preencher os campos <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone> 
E preencher <email> válido
Então Botao de finalizar compra torna-se "acessível"

Exemplos:
    | nome       | sobrenome   | pais       | endereco                   | cidade           | cep        | telefone    | email                         |
    | "Fernando" | "Felberque" | "Brasil"   | "Rua Anita Malfatte"       | "Belo Horizonte" | "31844000" | "988774466" | "fernandofelberque@gmail.com" |
    | "Sara"     | "Winter"    | "Canada"   | "vazio"                    | "Toronto"        | "32188968" | "955224433" | "sarawinter@gmail.com  "      |
    | "Leonardo" | "Goncalves" | "Mexico"   | "Camino prueba de muestra" | "Acapulco"       | "56128568" | "999771100" | "leonardogoncalves@gmail.com" |

Esquema do Cenário: Email inválido

Quando Usuário preencher todos os campos obrigatórios
E preencher <email> inválido
Então Exibir mensagem "Email inválido"

Exemplos:
   | email                         |
   | "fernandofelberque@gmail.com" |
   | "sara@winter.gmail.com"       |
   | "leonardogoncalves.com"       |

Esquema do Cenário: Campos Vazios

Quando Usuário deixar de preencher algum dos campos <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <email>
Então Exibir mensagem "Todos os campos marcados com * são obrigatórios"

Exemplos:
    | nome       | sobrenome   | pais       | endereco                   | cidade           | cep        | telefone    | email                         |
    | "Fernando" | "Felberque" | "Brasil"   | "Rua Anita Malfatte"       | "Belo Horizonte" | "31844000" | "988774466" | "fernandofelberque@gmail.com" |
    | "vazio"    | "Felberque" | "Brasil"   | "Rua Anita Malfatte"       | "Belo Horizonte" | "31844000" | "988774466" | "fernandofelberquegmailcom"   |
    | "Fernando" | "vazio"     | "Brasil"   | "Rua Anita Malfatte"       | "Belo Horizonte" | "31844000" | "988774466" | "fernandofelberquegmailcom"   |
    | "Fernando" | "Felberque" | "vazio"    | "Rua Anita Malfatte"       | "Belo Horizonte" | "31844000" | "988774466" | "fernandofelberquegmailcom"   |
    | "Fernando" | "Felberque" | "Brasil"   | "vazio"                    | "Belo Horizonte" | "31844000" | "988774466" | "fernandofelberquegmailcom"   |
    | "Fernando" | "Felberque" | "Brasil"   | "Rua Anita Malfatte"       | "vazio"          | "31844000" | "988774466" | "fernandofelberquegmailcom"   |
    | "Fernando" | "Felberque" | "Brasil"   | "Rua Anita Malfatte"       | "Belo Horizonte" | "vazio"    | "988774466" | "fernandofelberquegmailcom"   |
    | "Fernando" | "Felberque" | "Brasil"   | "Rua Anita Malfatte"       | "Belo Horizonte" | "31844000" | "vazio"     | "fernandofelberquegmailcom"   |
    | "Fernando" | "Felberque" | "Brasil"   | "Rua Anita Malfatte"       | "Belo Horizonte" | "31844000" | "988774466" | "vazio"                       |
    


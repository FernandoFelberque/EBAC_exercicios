Feature: Tela de cadastro - Checkout

Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Background:
Ao acessar a pagina de Checkout

Scenario Outline: Todos Dados Válidos
When Usuário digitar <nome>
And digitar <sobrenome>
And digitar <pais>
And digitar <endereco>
And digitar <cidade>
And digitar <cep>
And digitar <telefone>
And digitar <email>
Then Botao de finalizar compra torna-se "acessível"

Examples:
    | nome       | sobrenome   | pais       | endereco                   | cidade           | cep        | telefone    | email                         |
    | "Fernando" | "Felberque" | "Brasil"   | "Rua Anita Malfatte"       | "Belo Horizonte" | "31844000" | "988774466" | "fernandofelberque@gmail.com" |
    | "Sara"     | "Winter"    | "Canada"   | "Street testing e.g"       | "Toronto"        | "32188968" | "955224433" | "sarawinter@gmail.com  "      |
    | "Leonardo" | "Goncalves" | "Mexico"   | "Camino prueba de muestra" | "Acapulco"       | "18623799" | "999771100" | "leonardogoncalves@gmail.com" |

Scenario Outline: Email inválido

When Usuário digitar <nome>
And digitar <sobrenome>
And digitar <pais>
And digitar <endereco>
And digitar <cidade>
And digitar <cep>
And digitar <telefone>
And digitar <email>
Then Exibir mensagem "Email inválido"

Examples:
    | nome       | sobrenome   | pais       | endereco                   | cidade           | cep        | telefone    | email                         |
    | "Fernando" | "Felberque" | "Brasil"   | "Rua Anita Malfatte"       | "Belo Horizonte" | "31844000" | "988774466" | "fernandofelberquegmailcom"   |
    | "Sara"     | "Winter"    | "Canada"   | "Street testing e.g"       | "Toronto"        | "32188968" | "955224433" | "sara@winter.gmail.com"       |
    | "Leonardo" | "Goncalves" | "Mexico"   | "Camino prueba de muestra" | "Acapulco"       | "18623799" | "999771100 "| "leonardogoncalves.com"       |

Scenario Outline: Campos Vazios

When Usuário digitar <nome>
And digitar <sobrenome>
And digitar <pais>
And digitar <endereco>
And digitar <cidade>
And digitar <cep>
And digitar <telefone>
And digitar <email>
Then Exibir mensagem "Todos os campos marcados com * são obrigatórios"

Examples:
    | nome       | sobrenome   | pais       | endereco                   | cidade           | cep        | telefone    | email                         |
    | "null"     | "Felberque" | "Brasil"   | "Rua Anita Malfatte"       | "Belo Horizonte" | "31844000" | "988774466" | "fernandofelberquegmailcom"   |
    | "Fernando" | "null"      | "Brasil"   | "Rua Anita Malfatte"       | "Belo Horizonte" | "31844000" | "988774466" | "fernandofelberquegmailcom"   |
    | "Fernando" | "Felberque" | "null"     | "Rua Anita Malfatte"       | "Belo Horizonte" | "31844000" | "988774466" | "fernandofelberquegmailcom"   |
    | "Fernando" | "Felberque" | "Brasil"   | "null"                     | "Belo Horizonte" | "31844000" | "988774466" | "fernandofelberquegmailcom"   |
    | "Fernando" | "Felberque" | "Brasil"   | "Rua Anita Malfatte"       | "null"           | "31844000" | "988774466" | "fernandofelberquegmailcom"   |
    | "Fernando" | "Felberque" | "Brasil"   | "Rua Anita Malfatte"       | "Belo Horizonte" | "null"     | "988774466" | "fernandofelberquegmailcom"   |
    | "Fernando" | "Felberque" | "Brasil"   | "Rua Anita Malfatte"       | "Belo Horizonte" | "31844000" | "null"      | "null"                        |
    | "Fernando" | "Felberque" | "Brasil"   | "Rua Anita Malfatte"       | "Belo Horizonte" | "31844000" | "988774466" | "fernandofelberquegmailcom"   |
    


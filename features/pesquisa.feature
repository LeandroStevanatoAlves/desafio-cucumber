#language: pt

Funcionalidade: Pesquisa de produtos
    Sendo um visitante do site
    Posso fazer a pesquisa de produtos

    Esquema do Cenário: Pesquisa de produtos com sucesso
        Dado que pesquiso por "<produto>"
        Quando seleciono um resultado da pesquisa
        E clico em "Adicionar à sacola"
        Então o "<produto>" é adicionado com sucesso no carrinho de compras

        Exemplos: 
        | produto  |
        | notebook |
        | fogão    |
        | celular  |

    Cenario: Pesquisa de produtos que não existe
        Dado que pesquiso por "qqqqqqq"
        Então recebo a mensagem "Sua busca por qqqqqqq não encontrou resultado algum :("
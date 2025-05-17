Funcionalidade: Configurar produto

    Cenário com Contexto

    Contexto:
    Dado que o usuário está na página de um produto

    Cenário: Configurar produto com cor, tamanho e quantidade
    Quando selecionar uma cor, um tamanho e uma quantidade
    Então as opções selecionadas devem ser exibidas corretamente
    E a quantidade deve ser igual ou maior que 1

    Cenário: Exibir aviso ao ultrapassar o limite de 10 unidades
    Dado que o usuário adicionou 10 unidades de um produto
    Quando clicar no botão "+"
    Então o botão "+" deve ser ocultado
    E uma mensagem de aviso em vermelho deve ser exibida informando o limite atingido

    Esquema do Cenário: Permitir ou bloquear finalização da compra com base na quantidade
    Quando o usuário adicionar <quantidade> unidades de um produto no carrinho
    Então o sistema deve exibir o "<resultado>"

    Cenário com Tabela:

    Exemplos:
        | quantidade | resultado                                 |
        | 1          | concluir a venda de produto               |
        | 5          | concluir a venda de produto               |
        | 10         | concluir a venda de produto               |
        | 11         | exibir mensagem de limite excedido        |

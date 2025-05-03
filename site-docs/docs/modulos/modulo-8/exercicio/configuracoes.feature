Funcionalidade: Configurar produto

    Cenário com Contexto

    Cenário: Configurar produto com cor, tamanho e quantidade
        Dado que o usuário está na página de um produto
        Quando ele selecionar uma cor disponível
        E selecionar um tamanho
        E definir a quantidade desejada
        Então as opções selecionadas devem ser exibidas corretamente
        E a quantidade deve ser igual ou maior que 1

    Cenário: Exibir aviso ao tentar ultrapassar o limite de 10 unidades
        Dado que o usuário adicionou 10 unidades de um produto
        Quando ele tentar clicar no botão "+" novamente
        Então o botão "+" deve ser ocultado
        E uma mensagem de aviso em vermelho deve ser exibida informando o limite atingido

    Cenário com Esquema

    Esquema do Cenário: Permitir ou bloquear finalização da compra com base na quantidade
        Dado que o usuário adiciona <quantidade> unidades de um produto no carrinho
        Então o sistema deve <resultado>

    Cenário com Tabela

        | quantidade     | resultado                                                          |
        | Q = 1          | concluir a venda de produto                                        |
        | Q = 5          | concluir a venda de produto                                        |
        | Q = 10         | concluir a venda de produto                                        |
        | Q > 10         | exibir mensagem de limite excedido debaixo do campo de quantidade  |

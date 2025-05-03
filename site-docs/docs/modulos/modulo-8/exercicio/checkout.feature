Funcionalidade: Checkout (Cadastro de nome de cliente e endereco e Finalizar Pedido)

    Contexto
        Cliente Cadastrado da loja EBAC e vai preencher dados do endereco para realizar compra ou seja proxima etapa de forma de pagamento.

    Cenário: Prencher dados corretos nos campos que possui asteriscos
        Dado que cliente preencher os dados corretos nos campos obrigatórios que possui asteriscos
        E clicar botão "Finalizar Compra"
        Então será redirecionado a pagina de forma de pagamento (proxima etapa).

    Cenário: preencher dado incorreto no(s) campo(s) que possui asteriscos
        Dado que cliente preenche dado num campo que possui asteriscos
        Então receberá aviso com texto "obrigatório preencher neste campo" debaixo do campo obrigatório que possui asteriscos.

    Cenário: Preencher e-mail incorreto ou fora de formatacao de email
        Dado que cliente preencher e-mail sem @
        Então receberá aviso com texto  "obrigatório preencher neste campo" debaixo do campo obrigatório que possui asteriscos.

    Cenário: Preencher e-mail incorreta ou fora de formatacao de e-mail sem texto depois do @
        Dado que cliente preencher e-mail sem texto depois do @
        E texto exemplo preenchido como "test_email@"
        Então receberá aviso com texto  "obrigatório preencher neste campo" debaixo do campo obrigatório que possui asteriscos.
    
    Cenário: Preencher dados vazios no(s) campo(s)
        Dado que cliente que nao preencher no campo obrigatório
        Então receberá aviso com texto  "obrigatório preencher neste campo" debaixo do campo obrigatório que possui asteriscos.

    Esquema do Cenário: Preencher <dados> no campo de cadastro na pagina de checkout
        Dado que o cliente preenche <dados> nos campos obrigatorios
        Então realiza a compra

    Cenário com Tabela
    
        | dados                                                                                             | resultado                                     |
        | nome | sobrenome | país | endereço | cidade | CEP     | telefone | endereco de e-mail             |                                               |
        | sim  | sim       | sim  | sim      | sim    | sim     | sim      | válido                         | finaliza compra                               |
        | vazio| sim       | sim  | sim      | sim    | sim     | sim      | válido                         | exibir erro no campo 'nome'                   |
        | sim  | sim       | sim  | sim      | sim    | sim     | sim      | sem-arroba                     | exibir erro no campo 'email'                  |
        | sim  | sim       | sim  | sim      | sim    | sim     | sim      | vazio                          | exibir erro no campo 'email'                  |
        | sim  | sim       | sim  | vazio    | sim    | sim     | sim      | válido                         | exibir erro no campo 'endereço'               |
        | sim  | sim       | sim  | sim      | vazio  | sim     | sim      | válido                         | exibir erro no campo 'cidade'                 |
        | sim  | sim       | sim  | sim      | sim    | vazio   | sim      | válido                         | exibir erro no campo 'CEP'                    |
        | sim  | sim       | sim  | sim      | sim    | sim     | vazio    | válido                         | exibir erro no campo 'telefone'               |
        | sim  | sim       | sim  | sim      | sim    | sim     | sim      | vazio                          | exibir erro no campo 'endereco de e-mail '    |

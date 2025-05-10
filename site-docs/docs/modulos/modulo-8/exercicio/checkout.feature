Funcionalidade: Checkout (cadastro de cliente e endereço)

    Contexto:
        Dado que o cliente está na página de checkout da loja EBAC

    Cenário: Finalizar compra com todos os dados obrigatórios preenchidos
        Quando preencher todos os campos obrigatórios marcados com asterisco
        E clicar no botão "Finalizar compra"
        Então o sistema deverá direcionar à página com as formas de pagamento

    Cenário: Exibir erro ao deixar campos obrigatórios vazios
        Quando não preencher um ou mais campos obrigatórios
        E clicar no botão "Finalizar compra"
        Então o sistema deverá exibir a mensagem "Campo obrigatório" abaixo de cada campo não preenchido

    Cenário: Exibir erro ao preencher e-mail sem "@"
        Quando preencher o campo de e-mail com "clienteemail.com"
        E clicar no botão "Finalizar compra"
        Então o sistema deverá exibir a mensagem "Campo obrigatório" abaixo do campo de e-mail

    Cenário: Exibir erro ao preencher e-mail incompleto (sem domínio)
        Quando preencher o campo de e-mail com "cliente@"
        E clicar no botão "Finalizar compra"
        Então o sistema deverá exibir a mensagem "Campo obrigatório" abaixo do campo de e-mail

    Esquema do Cenário: Validação de campos obrigatórios no checkout
    Quando preencher os campos <nome>, <sobrenome>, <país>, <endereço>, <cidade>, <cep>, <telefone> e <email>
    E clicar no botão "Finalizar compra"
    Então o sistema deverá apresentar o seguinte resultado: "<resultado>"

    Exemplos:
        | nome  | sobrenome | país | endereço | cidade | cep   | telefone | email        | resultado                             |
        | sim   | sim       | sim  | sim      | sim    | sim   | sim      | válido       | redirecionar para formas de pagamento |
        |       | sim       | sim  | sim      | sim    | sim   | sim      | válido       | exibir erro no campo 'nome'           |
        | sim   | sim       | sim  | sim      | sim    | sim   | sim      | sem-arroba   | exibir erro no campo 'email'          |
        | sim   | sim       | sim  | sim      | sim    | sim   | sim      | vazio        | exibir erro no campo 'email'          |
        | sim   | sim       | sim  | vazio    | sim    | sim   | sim      | válido       | exibir erro no campo 'endereço'       |
        | sim   | sim       | sim  | sim      | vazio  | sim   | sim      | válido       | exibir erro no campo 'cidade'         |
        | sim   | sim       | sim  | sim      | sim    | vazio | sim      | válido       | exibir erro no campo 'cep'            |
        | sim   | sim       | sim  | sim      | sim    | sim   | vazio    | válido       | exibir erro no campo 'telefone'       |
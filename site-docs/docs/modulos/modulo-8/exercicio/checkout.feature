Funcionalidade: Checkout (cadastro de cliente e endereço)

    Contexto:
        Dado que o cliente está na página de checkout da loja EBAC

    Cenário: Finalizar compra com todos os dados obrigatórios preenchidos
        Quando preencher todos os campos obrigatórios marcados com asterisco
        E clicar no botão "Finalizar compra"
        Então o sistema deve redirecionar para a página com as formas de pagamento

    Cenário: Exibir erro ao deixar campos obrigatórios vazios
        Quando não preencher um ou mais campos obrigatórios
        E clicar no botão "Finalizar compra"
        Então o sistema deve exibir a mensagem "Campo obrigatório" abaixo de cada campo não preenchido

    Cenário: Exibir erro ao preencher e-mail sem "@"
        Quando preencher o campo de e-mail com "clienteemail.com"
        E clicar no botão "Finalizar compra"
        Então o sistema deve exibir a mensagem "Campo obrigatório" abaixo do campo de e-mail

    Cenário: Exibir erro ao preencher e-mail incompleto (sem domínio)
        Quando preencher o campo de e-mail com "cliente@"
        E clicar no botão "Finalizar compra"
        Então o sistema deve exibir a mensagem "Campo obrigatório" abaixo do campo de e-mail

    Esquema do Cenário: Validação de campos obrigatórios no checkout
    Quando preencher os campos <nome>, <sobrenome>, <país>, <endereço>, <cidade>, <cep>, <telefone> e <email>
    E clicar no botão "Finalizar compra"
    Então o sistema deve exibir a mensagem <mensagem>

    Exemplos:
        | nome   | sobrenome | país    | endereço               | cidade           | cep       | telefone      | email                   | mensagem                                       |
        |        | Porto     | Brasil  | Avenida Antonio        | Feira de Santana | 401010110 | 7512341234    | caioporto@hotmail.com   | Campo obrigatório no campo 'nome'              |
        | Caio   | Porto     | Brasil  | Avenida Antonio        | Feira de Santana | 401010110 | 7512341234    | caioemail.com           | Formato de e-mail inválido                     |
        | Caio   | Porto     | Brasil  | Avenida Antonio        | Feira de Santana | 401010110 | 7512341234    |                         | Campo obrigatório no campo 'email'             |
        | Caio   | Porto     | Brasil  |                        | Feira de Santana | 401010110 | 7512341234    | caioporto@hotmail.com   | Campo obrigatório no campo 'endereço'          |
        | Caio   | Porto     | Brasil  | Avenida Antonio        |                  | 401010110 | 7512341234    | caioporto@hotmail.com   | Campo obrigatório no campo 'cidade'            |
        | Caio   | Porto     | Brasil  | Avenida Antonio        | Feira de Santana |           | 7512341234    | caioporto@hotmail.com   | Campo obrigatório no campo 'cep'               |
        | Caio   | Porto     | Brasil  | Avenida Antonio        | Feira de Santana | textoCEP  | 7512341234    | caioporto@hotmail.com   | Formato de cep inválido                        |
        | Caio   | Porto     | Brasil  | Avenida Antonio        | Feira de Santana | 401010110 |               | caioporto@hotmail.com   | Campo obrigatório no campo 'telefone'          |
        | Caio   | Porto     | Brasil  | Avenida Antonio        | Feira de Santana | 401010110 | textoTelefone | caioporto@hotmail.com   | Formato de telefone inválido                   |

Funcionalidade: Login no sistema da loja EBAC

    Contexto:
        Dado que o usuário está na página de login

    Cenário: Login com dados válidos
        Quando preencher o e-mail correto
        E a senha correta
        Então deve ser redirecionado para a página de checkout

    Cenário: Login com senha incorreta
        Quando preencher o e-mail "clienteEmpolgado@teste.com"
        E a senha "NaoQueroPreecherSenhaIncorreta"
        Então deve ver a mensagem "Usuário ou senha inválidos"

    Cenário: Login com campos obrigatórios vazios
        Quando tentar acessar sem preencher os campos
        Então deve ver a mensagem "Usuário ou senha inválidos"

    Cenário: Login com e-mail vazio e senha preenchida
        Quando preencher apenas o campo da senha corretamente
        Então deve ver a mensagem "Usuário ou senha inválidos"

    Cenário: Login com e-mail preenchido e senha vazia
        Quando preencher apenas o campo do e-mail corretamente
        Então deve ver a mensagem "Usuário ou senha inválidos"

    # Esquema com Tabela

    Esquema do Cenário: Tentativa de login com diferentes combinações de credenciais
        Quando preencher o campo de e-mail com "<usuario>"
        E preencher o campo de senha com "<senha>"
        Então o sistema deve "<resultado>"

    Exemplos:
        | usuario                       | senha                  | resultado                                    |
        | cliente@teste.com             | senha123               | redirecionar para a página de checkout       |
        | cliente@teste.com             | senhaIncorreta         | exibir mensagem "Usuário ou senha inválidos" |
        |                               | senha123               | exibir mensagem "Usuário ou senha inválidos" |
        | cliente@teste.com             |                        | exibir mensagem "Usuário ou senha inválidos" |

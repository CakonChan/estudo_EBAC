Funcionalidade: Login no sistema da loja EBAC

    Contexto:
        Dado que o usuário está na página de login

    Cenário: Login com dados válidos
        Quando preencher o e-mail "clienteEmpolgado@teste.com"
        E a senha "senha&Cliente01"
        Então o sistema deve redirecionar para a página de checkout

    Cenário: Login com senha incorreta
        Quando preencher o e-mail "clienteEmpolgado@teste.com"
        E a senha "NaoQueroPreecherSenhaIncorreta"
        Então o sistema deve exibir a mensagem "Usuário ou senha inválidos"

    Cenário: Login com campos obrigatórios vazios
        Quando tentar acessar sem preencher os campos
        Então o sistema deve exibir a mensagem "Usuário ou senha inválidos"

    Cenário: Login com e-mail vazio e senha preenchida
        Quando preencher apenas a senha "senha&Cliente01"
        Então o sistema deve exibir a mensagem "Usuário ou senha inválidos"

    Cenário: Login com e-mail preenchido e senha vazia
        Quando preencher apenas o e-mail "clienteEmpolgado@teste.com"
        Então o sistema deve exibir a mensagem "Usuário ou senha inválidos"

    # Esquema com Tabela

    Esquema do Cenário: Tentativa de login com diferentes combinações de credenciais
        Quando preencher o campo de e-mail com <usuario>
        E preencher o campo de senha com <senha>
        Então o sistema deve exibir a mensagem <mensagem>

    Exemplos:
        | usuario                       | senha                  | mensagem                               |
        | clienteEmpolgado@teste.com    | senha&Cliente01        | Acesso realizado com sucesso           |
        | clienteEmpolgado@teste.com    | senhaIncorreta         | Usuário ou senha inválidos             |
        |                               | senha&Cliente01        | Usuário ou senha inválidos             |
        | clienteEmpolgado@teste.com    |                        | Usuário ou senha inválidos             |

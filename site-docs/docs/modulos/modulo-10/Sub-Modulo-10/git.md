## **Resumo do Módulo 10 – GIT**

### O que é Git?

* Git é um **sistema de controle de versão distribuído**.
* Ele **guarda o histórico** de tudo que você faz em arquivos (geralmente códigos, mas pode ser qualquer tipo de arquivo).
* Permite que **várias pessoas trabalhem no mesmo projeto ao mesmo tempo**, sem sobrescrever o trabalho uma da outra.

> Foi criado por **Linus Torvalds** para ajudar no desenvolvimento do Linux. Hoje é usado no mundo todo, principalmente com o **GitHub**.

---

### Como o Git funciona?

* Você tem um **repositório local** no seu computador e um **repositório remoto** (como o GitHub).
* Você **salva suas mudanças localmente** (com `commit`) e **envia** (`push`) para o repositório remoto.
* E pode **buscar atualizações** do time com `pull`.

---

### Instalação do Git

* Acesse: [https://git-scm.com](https://git-scm.com)
* Siga as instruções do seu sistema (Windows, Linux, Mac)
* Após instalar, use no terminal:

  ```bash
  git --version
  ```

---

### Primeira configuração (obrigatório)

```bash
git config --global user.name "Seu Nome"
git config --global user.email "seu@email.com"
```

Essas informações ficam registradas em todos os seus commits.

---

### Fluxo básico do Git

1. `git clone` → clonar um repositório remoto
2. `git pull` → puxar atualizações do repositório remoto
3. `git add .` → adicionar arquivos para commit
4. `git commit -m "mensagem"` → salvar alterações localmente
5. `git push` → enviar para o repositório remoto

---

### .gitignore

* Um arquivo onde você lista **o que não deve ir para o repositório**, como:

  ```
  node_modules/
  .env
  .DS_Store
  *.log
  ```

Isso **evita arquivos desnecessários no repositório**.

---

### Branch

* Uma **ramificação** do seu projeto principal.
* Serve para você **trabalhar em novas funcionalidades** sem atrapalhar a versão oficial.

Exemplo:

```bash
git checkout -b nova-feature
```

---

### Gitflow (Fluxo profissional de trabalho em equipe)

Fluxo recomendado com boas práticas:

* `main`: versão oficial
* `develop`: desenvolvimento geral
* `feature/*`: novas funcionalidades
* `release/*`: preparações para entrega
* `hotfix/*`: correções rápidas em produção

---

## Referências úteis e confiáveis:

* [GitHub Docs – Início rápido](https://docs.github.com/en/get-started)
* [Livro oficial do Git (PT-BR)](https://git-scm.com/book/pt-br/v2)
* [Guia prático do Git (Roger Dudler)](http://rogerdudler.github.io/git-guide/index.pt_BR.html)
* [Tutorial Atlassian Git](https://www.atlassian.com/br/git/tutorials)

---

## Dicas para QA (atuais)

1. **Sempre faça `git pull` antes de iniciar o dia**, para evitar conflitos.
2. Use `.gitignore` para ignorar pastas como `evidencias/`, `report/`, `venv/`, `allure-results/`.
3. Crie branches com nomes claros: `feature/teste-login`, `bugfix/ajuste-cep`.
4. Se usa GitHub com equipes, **use Pull Request (PR)** com descrição e evidências.
5. Aprenda comandos como:

   ```bash
   git log --oneline
   git status
   git diff
   ```

---

## Atualização 2024–2025

* Git permanece o **padrão absoluto da indústria** para versionamento.
* GitHub, GitLab e Bitbucket continuam líderes como **plataformas remotas**.
* VS Code tem suporte nativo ao Git (lado esquerdo da interface).
* Ferramentas visuais como **GitKraken** ou **Sourcetree** facilitam o uso para iniciantes.

---
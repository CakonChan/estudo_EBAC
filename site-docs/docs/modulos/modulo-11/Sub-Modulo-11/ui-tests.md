# Módulo 11 – Automação de Testes com Cypress

## Por que usar Cypress?

O **Cypress** é uma ferramenta moderna e popular para automação de testes front-end. Seus principais diferenciais são:

* ✅ Fácil instalação e configuração
* ✅ Baixa curva de aprendizado
* ✅ Suporte a múltiplos navegadores (Chrome, Edge, Electron)
* ✅ Dashboard amigável para execução e depuração
* ✅ Suporte a testes de unidade, componentes, integração e UI

---

## Preparação do Ambiente

1. **Instale o Node.js:** [https://nodejs.org](https://nodejs.org)
2. **Instale o Visual Studio Code:** [https://code.visualstudio.com](https://code.visualstudio.com)
3. **Plugins recomendados no VS Code:**

   * `Cypress Snippets`
   * Suporte a ES6 e Mocha (reconhecimento de sintaxe)

### Verifique a instalação do Node:

```bash
node --version
```

---

## Criação do projeto e instalação do Cypress

### Criar o projeto:

```bash
npm init -y
```

### Instalar o Cypress (versão recomendada no curso):

```bash
npm install cypress@13.6.0
```

### Abrir o Cypress:

```bash
npx cypress open
```

> Obs.: As interfaces podem variar com a versão. Use a 13.6.0 para seguir igual ao curso, mas sinta-se à vontade para explorar outras versões.

---

## Estrutura de um teste Cypress

O teste Cypress segue uma estrutura clara com três partes:

1. **Capturar o elemento** → botão, input, texto, checkbox, etc.
2. **Executar uma ação** → clicar, digitar, selecionar, etc.
3. **Validar o resultado** → espera que algo aconteça

```js
cy.get('input[name=email]').type('teste@email.com');
cy.get('button[type=submit]').click();
cy.contains('Login realizado com sucesso');
```

---

## Hooks no Cypress

### `before()`

* Roda **uma vez antes de todos os testes**
* Exemplo: carregar base de dados

### `beforeEach()`

* Roda **antes de cada teste**
* Exemplo: visitar a URL padrão antes de cada cenário

### `after()`

* Roda **uma vez após todos os testes**
* Exemplo: limpar a base ao final

### `afterEach()`

* Roda **depois de cada teste** (menos usado)
* O Cypress já limpa o estado por padrão

---

## Referências oficiais e atualizadas

* [Documentação oficial do Cypress](https://docs.cypress.io)
* [Tutorial Cypress – Agilizei no YouTube](https://www.youtube.com/agilizei)

---
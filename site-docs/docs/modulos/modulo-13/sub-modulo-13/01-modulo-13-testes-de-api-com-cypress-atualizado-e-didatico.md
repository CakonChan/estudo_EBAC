---
id: api
title: Módulo 13 – Testes de API com Cypress (Atualizado e Didático)
slug: /modulo-13-testes-de-api-com-cypress-atualizado-e-didatico
sidebar_label: Módulo 13 – Testes de API com Cypress (Atualizado e Didático)
tags:
- cd
- ci
- cypress
---

# Módulo 13 – Testes de API com Cypress (Atualizado e Didático)

## O que é uma API?

API (Application Programming Interface) é um conjunto de regras que permite que sistemas diferentes se comuniquem. No contexto web, APIs geralmente utilizam o protocolo HTTP com o padrão REST.

### Principais métodos HTTP:

- **GET**: busca dados
- **POST**: envia dados
- **PUT**: atualiza dados
- **DELETE**: remove dados

---

## Por que testar APIs?

- Garante que os serviços estejam funcionando corretamente
- Detecta falhas antes da integração com o front-end
- É mais rápido e estável que testes de UI
- Ideal para automação contínua (CI/CD)

---

## Cypress também testa API?

Sim! Embora seja mais conhecido por testes de interface (UI), o Cypress também permite testar APIs com comandos como:

```js
cy.request({
  method: 'GET',
  url: 'https://api.exemplo.com/usuarios'
}).then((response) => {
  expect(response.status).to.eq(200)
})

---
id: tecnicas-testes-agil
title: Testes Ágeis e BDD
slug: /testes-ageis-e-bdd
sidebar_label: Testes Ágeis e BDD
tags:
- ci
- cypress
- java
- qa
---

# Testes Ágeis e BDD

## Práticas Ágeis

### Introdução

As práticas ágeis visam aproximar todas as pessoas envolvidas na entrega de software — QA, Dev, UX, PO, PM — para que compartilhem responsabilidades e objetivos desde o início da sprint. Essa abordagem quebra silos e fortalece a comunicação.

### Estrutura inspirada no modelo Spotify

A organização ágil pode seguir uma estrutura baseada em:

* **Tribo (Comunidade)**: grupos com propósito comum, por exemplo, todos que atuam com produtos financeiros.
* **Squad (Capítulo)**: times multidisciplinares e autônomos formados por QA, Dev, UX, PO, PM, TechLead, etc.
* **Capítulo**: grupo de pessoas com mesmo papel em diferentes squads (ex: QAs de várias squads).
* **Guilda**: comunidade informal com interesses compartilhados (ex: Testes, DevOps, Agilidade).

### Shift Left Testing

É a prática de **trazer os testes para o início do ciclo de desenvolvimento**. Em vez de testar só no final, o QA participa desde os requisitos.

#### Comparação visual:

* **Modelo tradicional**: foco em Homologação e Testes no fim.
* **Modelo Shift Left**: foco maior em Requisitos e Desenvolvimento.

**Benefícios:**

* Reduz retrabalho.
* Garante qualidade desde a concepção.
* Compartilha responsabilidade por toda a equipe.

### Todos Juntos

* Conversas frequentes sobre requisitos e entregas.
* Entrega da sprint é responsabilidade de todo o squad.

### Pareamento (Pair Programming)

* QA revisa e desenvolve testes junto com Dev.
* Aumenta a cobertura e compartilha conhecimento.
* Inspirado no **XP (Extreme Programming)**.

---

## Pirâmide de Testes

A **pirâmide de testes** orienta onde concentrar os esforços de testes de forma eficiente e sustentável.

### Camadas:

* **Base: Testes de Unidade** (rápidos, isolados, testam funções/classes).
* **Meio: Testes de Integração** (validam comunicação entre componentes ou APIs).
* **Topo: Testes de UI** (testes visuais automatizados e manuais).

### Conclusão:

Priorize testes de unidade e integração. Testes de UI devem validar o essencial, pois são mais lentos e frágeis.

---

## BDD com Gherkin

### O que é BDD?

**BDD (Behavior Driven Development)** é uma forma de escrever os requisitos em formato de comportamento. Usa uma linguagem próxima da conversação com foco no que o sistema **deve fazer**.

### Gherkin não é caso de teste!

* **Caso de teste:** técnico, imperativo (ex: clique aqui, insira ali).
* **Gherkin:** comportamento esperado, **declarativo** (ex: "Quando insiro senha errada, vejo mensagem de erro").

### Cenários com Contexto

Os passos "Dado, Quando, Então" representam o fluxo natural:

* **Dado**: estado inicial.
* **Quando**: ação realizada.
* **Então**: resultado esperado.

### Exemplo 1 – Cenário simples

```gherkin
#language: pt
Funcionalidade: Calculadora
Como não sei fazer conta de cabeça
Quero usar a calculadora do sistema
Para obter os resultados corretos

Cenário: Soma de dois números
  Dado que acesse a calculadora
  Quando eu somar 2 + 3
  Então o resultado da soma deve ser 5
```

### Exemplo 2 – Esquema com Tabela

```gherkin
#language: pt
Funcionalidade: Calculadora

Esquema do Cenário: Soma de 2 números com tabela
  Dado que eu acesse a calculadora
  Quando eu somar o <valor1> com <valor2>
  Então o resultado deve ser <total>

  Exemplos:
    | valor1 | valor2 | total |
    | 5      | 7      | 12    |
    | -8     | 10     | 2     |
    | 800    | 150    | 950   |
```

### Ferramentas compatíveis com Gherkin:

* **Java:** Cucumber
* **JavaScript/TypeScript:** Cypress

---

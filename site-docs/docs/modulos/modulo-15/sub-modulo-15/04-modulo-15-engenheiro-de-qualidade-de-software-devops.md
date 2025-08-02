---
id: devops
title: '🌐 Módulo 15 - Engenheiro de Qualidade de Software: DevOps'
slug: /modulo-15-engenheiro-de-qualidade-de-software-devops
sidebar_label: '🌐 Módulo 15 - Engenheiro de Qualidade de Software: DevOps'
tags:
- cd
- ci
- docker
---

# 🌐 Módulo 15 - Engenheiro de Qualidade de Software: DevOps

Este documento apresenta um resumo completo e estruturado para ser usado em sites com Docusaurus. É voltado para estudantes e profissionais que desejam entender os pilares e práticas do DevOps, com foco no contexto de qualidade de software.

---

## 🧠 O que é DevOps?

**DevOps** é uma abordagem cultural e colaborativa que integra equipes de **desenvolvimento (Dev)** e **operações (Ops)** com o objetivo de acelerar entregas, melhorar a qualidade e tornar o processo de desenvolvimento mais eficiente.

> “Você não muda cultura diretamente. Mas muda comportamento, e o comportamento vira cultura.” – *Lloyd Taylor*

---

## 📜 Histórico

- **2008**: Surgimento do termo *Infraestrutura Ágil*.
- **2009**: Termo *DevOps* criado na conferência Velocity (O’Reilly).
- **2010**: John Willis & Damon Edwards criam o acrônimo **CAMS**:
  - Culture, Automation, Measurement, Sharing
- **2012**: Jez Humble adiciona o "L" de **Lean**, criando **CALMS**.

---

## 🧱 Pilares DevOps (CALMS)

1. **Culture** – Cultura de colaboração, empatia e confiança.
2. **Automation** – Automação de build, deploy, testes e monitoramento.
3. **Lean IT** – Redução de desperdícios e melhoria contínua.
4. **Measurement** – Uso de métricas, logs, feedback e dashboards.
5. **Sharing** – Compartilhamento de conhecimento e autonomia das equipes.

---

## 🔁 Ciclo DevOps

1. **Planejar**
2. **Desenvolver**
3. **Build/Testar**
4. **Release**
5. **Deploy**
6. **Operar**
7. **Monitorar**
8. (Repetir com melhoria contínua)

---

## ⚙️ CI/CD: Integração e Entrega Contínua

- **Continuous Integration (CI)**:
  - Integração e verificação frequente do código.
- **Continuous Delivery (CD)**:
  - Entregas constantes e automáticas em ambiente de homologação.
- **Continuous Deployment**:
  - Entrega em produção sem intervenção manual.

> “CI não elimina bugs, mas os torna mais fáceis de encontrar.” – *Martin Fowler*

---

## 🐳 Docker e Containers

### 📦 O que é Docker?

- Plataforma open-source para empacotar e executar aplicativos como **containers**.
- Usa o subsistema **LXC** do Kernel Linux.
- Desenvolvido em **GoLang**.

### 🎯 Vantagens

- Padronização de ambientes.
- Facilidade em testes e deploys.
- Menor consumo de recursos.
- Reutilização de imagens com camadas (layers).

### 🔗 Docker Hub

- Maior repositório de imagens Docker públicas e privadas.
- Empresas podem usar registros privados.

---

## 📌 Comandos Básicos do Docker

```bash
docker help                      # Ajuda geral
docker image ls                  # Lista imagens
docker container ps -a          # Lista todos os containers
docker pull <imagem>            # Baixa imagem
docker run <imagem>             # Executa imagem
docker stop <id>                # Para container
docker rm <id>                  # Remove container
docker rmi <id>                 # Remove imagem

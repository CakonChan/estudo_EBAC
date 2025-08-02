---
id: cloud
title: Modelos de Serviço em Cloud Computing
slug: /modelos-de-servico-em-cloud-computing
sidebar_label: Modelos de Serviço em Cloud Computing
tags:
- ci
- docker
---

# Modelos de Serviço em Cloud Computing

Nesta seção vamos entender os quatro principais modelos de serviço na computação em nuvem: **IaaS, CaaS, PaaS e SaaS**.

---

## 1. IaaS – *Infrastructure as a Service* (Infraestrutura como Serviço)

**Definição:**  
Oferece infraestrutura de TI virtualizada pela internet, como servidores, redes e armazenamento.  
O cliente é responsável pela instalação e gerenciamento de sistemas operacionais, aplicações e dados.

**Exemplos (2025):**
- **AWS EC2** (Amazon Elastic Compute Cloud)
- **Microsoft Azure Virtual Machines**
- **Google Compute Engine**

**Vantagens:**
- Escalabilidade sob demanda
- Pagamento pelo uso (*pay-as-you-go*)
- Alta flexibilidade

---

## 2. CaaS – *Containers as a Service* (Contêiner como Serviço)

**Definição:**  
Serviço de nuvem que oferece gerenciamento, execução e orquestração de contêineres.  
Facilita o uso de ferramentas como **Docker** e **Kubernetes** sem precisar configurar toda a infraestrutura.

**Exemplos (2025):**
- **Amazon EKS** (Elastic Kubernetes Service)
- **Azure Kubernetes Service (AKS)**
- **Google Kubernetes Engine (GKE)**

**Vantagens:**
- Portabilidade de aplicações
- Facilidade para escalar microsserviços
- Gerenciamento simplificado de clusters

---

## 3. PaaS – *Platform as a Service* (Plataforma como Serviço)

**Definição:**  
Fornece uma plataforma completa para desenvolver, executar e gerenciar aplicações sem se preocupar com a infraestrutura.

**Exemplos (2025):**
- **Heroku**
- **Google App Engine**
- **AWS Elastic Beanstalk**

**Vantagens:**
- Agilidade no desenvolvimento
- Integrações nativas
- Escalabilidade automática

---

## 4. SaaS – *Software as a Service* (Software como Serviço)

**Definição:**  
Aplicativos prontos para uso acessados via internet, sem instalação local.  
O provedor gerencia tudo: infraestrutura, plataforma e aplicação.

**Exemplos (2025):**
- **Google Workspace**
- **Microsoft 365**
- **Slack**
- **Salesforce**

**Vantagens:**
- Acesso de qualquer lugar
- Atualizações automáticas
- Custos previsíveis por assinatura

---

## Tabela Comparativa

| Modelo | O que o Provedor Gerencia | O que o Cliente Gerencia | Exemplos |
|--------|--------------------------|--------------------------|----------|
| **IaaS** | Hardware, rede, virtualização | SO, middleware, runtime, dados, apps | AWS EC2, Azure VM |
| **CaaS** | Infraestrutura + orquestração de contêineres | Aplicações dentro dos contêineres | EKS, AKS, GKE |
| **PaaS** | Infraestrutura, SO, middleware, runtime | Código e dados das aplicações | Heroku, App Engine |
| **SaaS** | Tudo (infra, plataforma e app) | Uso do software | Google Workspace, Microsoft 365 |

---

## Diagrama Visual

```mermaid
graph LR
A[IaaS] -->|Infraestrutura| B[CaaS]
B -->|Orquestração de contêiner| C[PaaS]
C -->|Plataforma completa| D[SaaS]

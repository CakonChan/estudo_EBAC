# Introdução aos Testes de UI

Testes de UI (User Interface) visam validar se a interface de um aplicativo está funcionando corretamente do ponto de vista visual e funcional. Eles podem ser feitos manualmente ou de forma automatizada.

Interface do Usuário pode ser:
- Web (GUI)
- Linha de comando (CLI)
- APIs (também são formas de interface)

---

## Tipos de Teste de Interface

### Teste de GUI

Verifica se os elementos visuais (menus, botões, ícones) funcionam conforme o esperado. Foca na aparência e comportamento visual.

---

## Características dos Testes de UI

- Podem ser aplicados em qualquer estágio de desenvolvimento
- Revelam oportunidades de melhoria no design e usabilidade

---

## Elementos a Serem Testados

- Cores e fontes
- Validação de tela e mensagens de erro
- Tamanho/posição dos elementos
- Links e navegação
- Campos obrigatórios
- Barras de rolagem, atalhos, tabelas, etc.

---

## Avaliação Heurística

Baseia-se em princípios de usabilidade extraídos da experiência prática. É um processo de revisão baseado em regras estabelecidas.

# As 10 Heurísticas de Nielsen e Molich

As heurísticas são princípios amplamente usados para avaliar a usabilidade de interfaces. Abaixo estão as 10 regras com explicações e exemplos práticos:

---

## 1. Visibilidade do status do sistema

**Descrição:** O sistema deve informar constantemente o que está acontecendo.

**Exemplo:**  
Ao finalizar um pedido, mostrar uma mensagem como *“Processando pagamento...”* com indicador de carregamento.

---

## 2. Compatibilidade com o mundo real

**Descrição:** A interface deve usar a linguagem do usuário, com palavras e conceitos do dia a dia.

**Exemplo:**  
Usar “Carrinho de Compras” em vez de “Repositório de Itens”.

---

## 3. Controle e liberdade do usuário

**Descrição:** O usuário deve poder desfazer ações e navegar livremente.

**Exemplo:**  
Botão “Cancelar” ou “Voltar” visível ao preencher um formulário.

---

## 4. Consistência e padrões

**Descrição:** Manter padrão visual e de comportamento em toda a interface.

**Exemplo:**  
Ícone de lixeira sempre representando “Excluir” em todas as telas.

---

## 5. Prevenção de erros

**Descrição:** Impedir que erros aconteçam antes que o usuário os cometa.

**Exemplo:**  
Desabilitar botão “Enviar” até que todos os campos obrigatórios estejam preenchidos.

---

## 6. Reconhecimento em vez de recordação

**Descrição:** Evitar que o usuário tenha que lembrar de informações já vistas.

**Exemplo:**  
Mostrar sugestões de preenchimento em campos com histórico de compras.

---

## 7. Flexibilidade e eficiência de uso

**Descrição:** O sistema deve ser útil para iniciantes e oferecer atalhos para usuários avançados.

**Exemplo:**  
Permitir que o usuário pressione `Ctrl + Enter` para enviar um formulário.

---

## 8. Design estético e minimalista

**Descrição:** Mostrar apenas informações realmente importantes.

**Exemplo:**  
Em uma tela de checkout, evitar propagandas ou informações irrelevantes.

---

## 9. Diagnóstico e recuperação de erros

**Descrição:** Mensagens de erro claras e úteis para resolver o problema.

**Exemplo:**  
*“Produto não encontrado. Verifique o nome ou tente novamente mais tarde.”*

---

## 10. Ajuda e documentação

**Descrição:** Mesmo sistemas simples devem oferecer suporte ao usuário.

**Exemplo:**  
Botão com “?” ao lado do campo CVV explicando o que é o código.

---

## Testes de Acessibilidade

Permite que pessoas com deficiência tenham acesso pleno à aplicação.

### Fatores envolvidos:

- Conteúdo da página
- Navegadores e tecnologias assistivas
- Conhecimento e adaptação do usuário

### Diretrizes WCAG

- Navegação limpa, tabulação correta, contraste, uso de cor, imagens descritivas

### Checklist de Acessibilidade

- Navegar com teclado  
- Texto alternativo em imagens  
- Campos com labels  
- Tabela com cabeçalhos  
- Contraste adequado  
- Redimensionamento de texto  

---

## Ferramentas para Acessibilidade

- **Acessibilidade e contraste:** [Avaliador e Simulador de Acessibilidade em Sítios](https://asesweb.governoeletronico.gov.br/), [tawdis](https://www.tawdis.net/) e [W3C - CSS Validator](https://jigsaw.w3.org/css-validator/)
- **Leitores de Tela:** JAWS, NVDA, ORCA, VoiceOver e TalkBack
- **Ampliadores de tela:** LentePro, Magical Glass, Virtual Magnifying Glass Portable e Virtual Magnifying Glass
- **Tradutores de Libras Virtualmente:** VLibras e Hand Talk

---

## HTML, CSS e DOM

- **HTML** define estrutura da página  
- **CSS** define estilo visual (cor, fonte, espaçamento)  
- **DOM** é a representação do HTML na memória, permitindo interação dinâmica via scripts

---

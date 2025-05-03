module.exports = {
  tutorialSidebar: [
    {
      type: "category",
      label: "Módulo 8 - Agilidade e adaptabilidade",
      link: {
        type: "generated-index",
        title: "Módulo 8 - Agilidade e adaptabilidade",
        description: "Este módulo explica 4: Metodologias ágeis e Teste ágil , Fluxo de trabalho do ágil , Técnicas de teste Ágil , Testes de UI (user interface) , GIT"
      },
      items: [
        {
          type: "category",
          label: "Técnicas de Teste Ágil",
          link: {
            type: "generated-index",
            title: "Técnicas de Teste Ágil",
            description: "Explora o uso do QA em ambientes ágeis com foco em shift left, três amigos, pirâmide de testes e pareamento QA+Dev."
          },
          items: [
            "modulos/modulo-8/Sub-Modulo-8/tecnicas-testes-agil"
          ]
        },
        {
          type: "category",
          label: "BDD com Gherkin",
          link: {
            type: "generated-index",
            title: "BDD com Gherkin",
            description: "Aprenda a escrever cenários com Given-When-Then, criar arquivos .feature e integrar com frameworks de automação de testes."
          },
          items: [
            "modulos/modulo-8/Sub-Modulo-8/Gherkin-BDD/estrutura"
          ]
        }
      ]
    }
  ]
};

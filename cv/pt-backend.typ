#import "@preview/basic-resume:0.2.9": *

#let name = "Nicolas Moreira Ferreira"
#let location = "São Vicente, São Paulo, Brasil"
#let email = "nikola.snay@hotmail.com"
#let github = "github.com/nicolasmoreiraferreira"
#let linkedin = "linkedin.com/in/nicolasmoreiraferreira"
#let phone = "+55 13 99794-9634"
#let personal-site = "nicolasmoreiraferreira.github.io/portfolio"

#show: resume.with(
  author: name,
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  accent-color: "#0f4c81",
  font: "New Computer Modern",
  font-size: 9.2pt,
  paper: "a4",
  author-position: left,
  personal-info-position: left,
)

== Resumo

Desenvolvedor backend com foco em JavaScript/Node.js e APIs REST. Construo e mantenho serviços
em produção: API tipada sobre Express, banco de dados relacional, validação de dados,
processamento de webhooks idempotente e mais de 130 testes automatizados. Experiência também em
front-end com React e TypeScript, o que ajuda a entender quem consome a API.

== Competências técnicas

- *Back-end e dados:* JavaScript (ES2022+), Node.js, Express, APIs REST, tRPC, MySQL, Drizzle ORM, Zod, Python, webhooks
- *Testes e qualidade:* Vitest, Testing Library, Playwright, ESLint, TypeScript em modo estrito, testes de integração
- *Front-end:* HTML5, CSS3, TypeScript, React, Vite, Tailwind CSS, responsividade, acessibilidade (WCAG)
- *Ferramentas e DevOps:* Git, branches e pull requests, GitHub Actions (CI/CD), PyInstaller, Manifest V3

== Projetos

#project(
  name: "Painel Financeiro",
  role: "Desenvolvedor Full Stack",
  dates: dates-helper(start-date: "Jul 2026", end-date: "Atual"),
  url: "controlefinanceirosnay.com",
)
- Construí API tipada ponta a ponta com tRPC sobre Express, persistindo em MySQL via Drizzle ORM, com migrations versionadas e validação por Zod.
- Implementei lançamento de gastos por mensagem de WhatsApp: um webhook interpreta valor, categoria e cartão a partir de texto livre, e a gravação é idempotente por identificador de mensagem, então reenvio nunca duplica uma transação.
- Mantive a lógica de domínio em funções puras testadas isoladamente (ciclo de fatura, saldo, orçamentos, metas), chegando a mais de 130 testes automatizados, com checagem de tipos e build a cada entrega.
- Isolei os dados por conta — convite nominal, painel inicial vazio, credenciais de sincronização próprias. Código privado (dados financeiros reais); vitrine: #link("https://github.com/nicolasmoreiraferreira/controle-financeiro")

#project(
  name: "BOTSNAY — Plataforma de automação de processos web",
  role: "Desenvolvedor",
  dates: dates-helper(start-date: "2026", end-date: "Atual"),
)
- Construí uma plataforma desktop que executa fluxos de trabalho em sites de forma autônoma, com mais de 190 módulos em Python.
- Orchestrei sessões isoladas de navegador com Playwright para execução paralela sem interferência, tratando threads, persistência de estado e recuperação de falhas parciais.
- Empacotei para Windows com pipeline de releases versionadas validado em GitHub Actions, além de licenciamento e atualização automática para usuários finais sem suporte técnico.

#project(
  name: "Estados — laboratório de estados de interface",
  role: "Desenvolvedor Front-end",
  dates: dates-helper(start-date: "2026", end-date: "Atual"),
  url: "github.com/nicolasmoreiraferreira/estados",
)
- Construí aplicação de código aberto em React 19 e TypeScript que força doze condições reais de API — erro no servidor, sessão expirada, sem permissão, sem conexão, dado corrompido, cinco mil registros — para verificar cada tela sob demanda.
- Projetei renderizador único de estados que não deixa caminho para exibir conteúdo sem tratar carregamento, erro e vazio, cobrado por testes nas quatro telas.
- Cobri a aplicação com 175 testes automatizados (103 unitários, 72 de navegador) em desktop e celular, com virtualização de lista que mantém 20 linhas no DOM de 5.004.

#project(
  name: "Convite Digital com confirmação de presença",
  role: "Desenvolvedor Full Stack",
  dates: dates-helper(start-date: "Jul 2026", end-date: "Jul 2026"),
)
- Construí um site de evento usado de verdade por dezenas de famílias, com contagem regressiva em tempo real e confirmação de presença online separando adultos e crianças, validada e gravada no servidor, além de painel do dono com totais consolidados.

#project(
  name: "Portfólio pessoal",
  role: "Desenvolvedor Front-end",
  dates: dates-helper(start-date: "2026", end-date: "Atual"),
  url: "nicolasmoreiraferreira.github.io/portfolio",
)
- Construí com React, TypeScript, Vite e Tailwind CSS, com deploy contínuo no GitHub Pages via GitHub Actions, tratando acessibilidade, responsividade e dados estruturados (JSON-LD).

== Formação e certificações

#edu(
  institution: "Cruzeiro do Sul Virtual",
  location: "Ensino a distância, Brasil",
  dates: dates-helper(start-date: "2026", end-date: "2028"),
  degree: "Superior de Tecnologia em Análise e Desenvolvimento de Sistemas (em andamento)",
  consistent: true,
)

#edu(
  institution: "Curso em Vídeo",
  location: "Online, Brasil",
  dates: "2023",
  degree: "Desenvolvimento Front-end: HTML5, CSS3 e JavaScript",
  consistent: true,
)

#certificates(
  name: "Explorador do Universo Digital e IA",
  issuer: "Universidade Cruzeiro do Sul",
  date: "4h · out/2026",
)
\
#text(size: 8.5pt)[Hardware e software, algoritmos, internet e nuvem e ética em IA · Autenticação: a2fb632a-1477-480f-9cec-05a4f753d802]

== Idiomas

*Português:* Nativo · *Inglês:* Básico — leio documentação técnica e acompanho comunicação escrita; conversação ainda não fluente.

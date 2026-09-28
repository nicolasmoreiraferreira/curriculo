# Lina Infratech — material pronto para enviar

## Carta de apresentação

Prezada equipe da Lina,

Sou desenvolvedor backend júnior em São Vicente (SP) e me candidato à vaga de Desenvolvedor(a) Backend Júnior. Acompanhei o trabalho da Lina com Open Finance e Open Insurance e me interesso pelo problema central: fazer dados financeiros circularem com segurança entre sistemas diferentes, sem duplicar, sem perder e sem expor o que não deve ser exposto.

Esse é o tipo de problema que eu já enfrentei em escala menor, no painel financeiro que mantenho em produção. Ele atende clientes convidados, com dados isolados por conta, e tem uma API tipada ponta a ponta em tRPC sobre Express, com MySQL, migrations versionadas e validação de dados com Zod. O lançamento de gastos acontece por mensagem de WhatsApp: um webhook recebe o texto livre, interpreta valor, categoria e cartão, e grava a transação.

Ali apareceu o problema mais interessante que já resolvi. Passei a encontrar transações duplicadas — o mesmo gasto lançado duas vezes. A causa era a reentrega de webhooks: quando o processamento demora, o provedor reenvia a notificação, e a resposta automática do próprio bot podia disparar uma segunda chamada. Como a API gravava sempre, cada reentrega virava um lançamento novo. A correção foi tratar a gravação como idempotente, usando o identificador da mensagem como chave: antes de inserir, a API verifica se aquele identificador já foi processado e, se foi, devolve o resultado anterior em vez de gravar de novo. Cobri o caso com testes automatizados e acrescentei um detector que cruza lançamento manual, WhatsApp e planilha para apontar duplicidades que escapem da regra principal.

Também construí o Estados, uma aplicação de código aberto que força doze condições reais de API — erro no servidor, sessão expirada, ausência de permissão, falta de conexão, dado corrompido e alto volume — para verificar como cada tela reage. Foram 175 testes automatizados, sendo 72 de navegador. É o tipo de cuidado que eu levo para o backend: se a API falha de um jeito previsível, quem consome consegue tratar.

Trabalho com JavaScript e Node.js, APIs REST, banco de dados relacional, Git com branches e pull requests, e testes automatizados como parte da entrega, não como etapa final. Curso Análise e Desenvolvimento de Sistemas na Cruzeiro do Sul. Procuro um time em que eu possa aprender com code review e contribuir desde cedo com entregas reais.

Demonstração do Estados: https://nicolasmoreiraferreira.github.io/estados/
Código: https://github.com/nicolasmoreiraferreira/estados
Portfólio: https://nicolasmoreiraferreira.github.io/portfolio/

Fico à disposição para conversar sobre como resolvi esses problemas e sobre o que posso contribuir no time.

Atenciosamente,

Nicolas Moreira Ferreira
nikola.snay@hotmail.com · +55 13 99794-9634

---

---

## Resposta: performance ou instabilidade em uma API

Sim. No painel financeiro que mantenho em produção, os gastos são lançados por mensagem de WhatsApp processada por um webhook. Comecei a ver transações duplicadas e descobri que a causa era reentrega: quando o processamento demora, o provedor reenvia a notificação, e como a API gravava sempre, cada reenvio criava um lançamento novo.

Resolvi tornando a gravação idempotente pelo identificador da mensagem — antes de inserir, a API verifica se já processou aquele identificador e, se já processou, devolve o resultado anterior em vez de gravar de novo. Tirei as regras de domínio para funções puras, o que me deixou testar o cenário de reentrega isoladamente, e hoje o projeto tem mais de 130 testes automatizados. Também adicionei um detector que cruza lançamentos manuais, do WhatsApp e de planilha para apontar duplicidades.

O aprendizado: operação que altera estado precisa ser segura quando repetida. Reentrega não é exceção em API, é o comportamento esperado da rede.

---

## Campos objetivos

- **Pretensão salarial:** 4000
- **URL pessoal:** https://nicolasmoreiraferreira.github.io/portfolio/
- **Currículo a anexar:** Nicolas-Moreira-Ferreira-Curriculo-PT.pdf
- **Telefone:** +55 13 99794-9634
- **E-mail:** nikola.snay@hotmail.com

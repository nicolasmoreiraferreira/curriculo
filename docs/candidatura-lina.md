# Candidatura — Lina Infratech, Desenvolvedor(a) Backend Júnior

Vaga: https://lina.factorialhr.com.br/apply/desenvolvedor-a-backend-junior-324661/
CLT · Tempo integral · **100% remoto**

---

## Por que esta vaga combina com você

Não é força de expressão. Compare item por item:

| O que a Lina pede | O que você tem |
| --- | --- |
| Superior completo ou **em andamento** em área afim | ADS na Cruzeiro do Sul, em andamento — atende |
| Experiência prática **em projetos pessoais** | Painel financeiro em produção, Estados, BOTSNAY — atende |
| Domínio de JavaScript | React e TypeScript em modo estrito, Node.js — atende |
| APIs REST | tRPC sobre Express, webhooks, validação com Zod — atende |
| Familiaridade com Node.js | Express, webhook de WhatsApp — atende |
| Git e fluxos colaborativos | 11 repositórios públicos, branches, PRs, CI — atende |
| **Diferencial:** interesse pelo mercado financeiro | Painel financeiro com ciclo de fatura, parcelas, patrimônio — **atende forte** |
| **Diferencial:** noções de testes automatizados | 175 + 130 testes, Vitest e Playwright — **atende forte** |
| **Diferencial:** projetos pessoais compartilháveis | Estados é código aberto com demonstração no ar — **atende forte** |

Os três diferenciais da vaga são justamente os seus pontos mais fortes. Você não
está se candidatando "apesar" de não ter experiência formal — está se candidatando
com o que eles pedem como diferencial.

---

## Carta de apresentação (colar no campo do formulário)

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

## Resposta à pergunta técnica do formulário

**Pergunta:** Você já enfrentou algum problema de performance ou instabilidade em
uma API? O que fez para resolver?

### Resposta completa

Sim. No painel financeiro que mantenho em produção, o lançamento de gastos acontece por mensagem de WhatsApp: um webhook recebe o texto, interpreta valor, categoria e cartão e grava a transação. Comecei a encontrar transações duplicadas — o mesmo gasto lançado duas vezes, sem que o usuário tivesse enviado duas mensagens.

Investiguei e a causa era reentrega de webhook. Quando o processamento demora mais do que o provedor espera, ele reenvia a notificação; além disso, a resposta automática do próprio bot podia disparar uma segunda chamada. Como a API gravava sempre que recebia, cada reentrega virava um lançamento novo. Era uma falha de idempotência, não de velocidade.

O que fiz:

1. Passei a tratar a gravação como idempotente, usando o identificador da mensagem como chave. Antes de inserir, a API verifica se aquele identificador já foi processado; se já foi, devolve o resultado anterior em vez de gravar de novo.
2. Tirei a lógica de domínio de dentro do fluxo HTTP e coloquei em funções puras — ciclo de fatura, saldo, orçamento, detecção de duplicidade — o que me permitiu testar cada regra isoladamente, sem subir servidor nem banco.
3. Cobri o caso com testes automatizados, incluindo o cenário de reentrega. Hoje são mais de 130 testes no projeto, rodando com checagem de tipos e build a cada entrega.
4. Acrescentei um detector que cruza lançamento manual, WhatsApp e planilha importada, para apontar possíveis duplicidades que escapem da regra principal.

O resultado: reenvio deixou de criar dado errado e o problema passou a ser detectado em teste, antes de chegar ao extrato do usuário. O que aprendi e levo para qualquer API foi que operações que alteram estado precisam ser seguras quando repetidas — reentrega não é exceção, é o comportamento esperado de uma rede.

### Resposta curta (se o campo for pequeno)

Sim. No painel financeiro que mantenho em produção, os gastos são lançados por mensagem de WhatsApp processada por um webhook. Comecei a ver transações duplicadas e descobri que a causa era reentrega: quando o processamento demora, o provedor reenvia a notificação, e como a API gravava sempre, cada reenvio criava um lançamento novo.

Resolvi tornando a gravação idempotente pelo identificador da mensagem — antes de inserir, a API verifica se já processou aquele identificador e, se já processou, devolve o resultado anterior em vez de gravar de novo. Tirei as regras de domínio para funções puras, o que me deixou testar o cenário de reentrega isoladamente, e hoje o projeto tem mais de 130 testes automatizados. Também adicionei um detector que cruza lançamentos manuais, do WhatsApp e de planilha para apontar duplicidades.

O aprendizado: operação que altera estado precisa ser segura quando repetida. Reentrega não é exceção em API, é o comportamento esperado da rede.

---

## Pretensão salarial

Você preencheu **R$ 4.000**. A faixa de júnior no Brasil é R$ 4.000 a R$ 8.000,
e essa é uma vaga CLT remota de uma startup que captou R$ 8 milhões e entrou na
lista LinkedIn Top Startups 2025.

R$ 4.000 é seguro e não te elimina. Mas vale saber: pelo portfólio que você
apresenta — software em produção, 300+ testes automatizados, projeto de código
aberto com demonstração — você está acima do júnior médio, que costuma chegar com
projetos de tutorial. Se quiser margem para negociar, **R$ 4.500 a R$ 5.000**
seria defensável na conversa, porque é faixa de júnior e você tem como comprovar.

Se preferir não arriscar nesta primeira oportunidade, R$ 4.000 está correto e
coerente com o que você escreveu no campo.

---

## O que enviar no formulário

| Campo | O que colocar |
| --- | --- |
| Nome / Sobrenome | Nicolas / Moreira Ferreira |
| Telefone | +55 (13) 99794-9634 |
| E-mail | nikola.snay@hotmail.com |
| URL pessoal | https://nicolasmoreiraferreira.github.io/portfolio/ |
| Carta de apresentação | texto acima |
| Currículo | `Nicolas-Moreira-Ferreira-Curriculo-PT.pdf` |
| Pretensão salarial | 4000 (ou 4500, se quiser margem) |
| Pergunta técnica | texto acima |

O currículo em português já está pronto em:
`/home/ubuntu/projetos/curriculo/pdf/Nicolas-Moreira-Ferreira-Curriculo-PT.pdf`

**Sugestão:** o currículo atual não menciona Node.js e APIs REST no resumo de
abertura, e essa vaga é exatamente disso. Se quiser, eu ajusto o resumo do
currículo para destacar backend Node.js antes de você enviar.

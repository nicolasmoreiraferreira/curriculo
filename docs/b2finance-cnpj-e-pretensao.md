# B2Finance — o que responder no formulário

## 1. Tipo de contrato desejado

**Responda: Prestador de Serviços (PJ).**

A vaga é PJ por definição — está escrito na descrição ("Tipo de contrato e
Jornada: Prestador de Serviços (PJ)"). Marcar CLT não muda a vaga: só sinaliza
ao recrutador que você não aceita o modelo que eles oferecem, e a triagem
descarta. Com 200+ candidatos, não vale gastar essa chance.

Você já tem CNPJ, então pode emitir nota desde o primeiro mês. Isso é uma
vantagem real sobre outros candidatos juniores, que precisariam abrir empresa
levando semanas. **Mencione isso** em "Informações complementares".

---

## 2. Pretensão salarial — ajuste o piso

Os campos são "(Bruto Mensal)". Para PJ, o bruto é o valor da nota fiscal, e é
aí que o número atual engana.

### O cálculo que importa

Um CLT de R$ 3.500 não custa R$ 3.500 para a empresa. Some:

| Item | Equivalente mensal |
| --- | --- |
| Salário bruto | R$ 3.500 |
| FGTS (8%) | R$ 280 |
| 13º salário (1/12) | R$ 292 |
| Férias + 1/3 (1/12 × 1,33) | R$ 389 |
| Benefícios (VR, VT, plano) | R$ 400–600 |
| **Custo real para a empresa** | **R$ 4.860 – R$ 5.060** |

Ou seja: para o pacote valer o mesmo, o PJ precisa faturar **cerca de R$ 4.500 a
R$ 5.000** — não R$ 3.500. A regra de mercado é que o PJ fique 30% a 50% acima do
equivalente CLT.

### O que você está pedindo hoje

- Faixa atual: **R$ 3.500 a R$ 5.000**
- O piso de R$ 3.500 é baixo para PJ: sem FGTS, sem 13º, sem férias, sem seguro-desemprego, e ainda pagando imposto sobre o valor recebido
- Referências de mercado para júnior full stack PJ em 2026: **R$ 4.500 a R$ 8.000** (o piso da faixa de mercado já está acima do seu)

### Recomendação

| Campo | Valor sugerido |
| --- | --- |
| Entre R$ (Bruto Mensal) | **4.000** |
| e R$ (Bruto Mensal) | **5.500** |
| Jornada desejada | Período Integral |
| Tipo de contrato desejado | Prestador de Serviços (PJ) |

Isso mantém você dentro do orçamento provável da vaga (que é junior e remota),
mas corrige o piso para o modelo PJ. Se preferir maximizar a chance de entrar,
mantenha R$ 3.500 como piso — é uma escolha legítima para a primeira
oportunidade, mas saiba que estará aceitando abaixo do mercado.

---

## 3. Verifique o CNAE antes de emitir nota

**Este é o ponto que pode travar tudo.**

Seu CNPJ foi aberto para vender no Mercado Livre — ou seja, com CNAE de
**comércio** (divisão 47). Comércio não permite emitir nota de serviço de
desenvolvimento de software. Se a nota for emitida com código incompatível, a
prefeitura **rejeita a NFS-e** e o pagamento não pode ser faturado.

### O que pedir ao seu contador

1. **Incluir o CNAE 6201-5/01** (desenvolvimento de programas de computador sob
   encomenda) como **CNAE secundário**. É o código correto para o seu caso:
   desenvolvimento de sistema sob medida para um cliente.
2. Confirmar que o **código de serviço da NFS-e** corresponde ao item **1.04 da
   LC 116/2003** (elaboração de programas de computador).
3. Definir o **pró-labore**.

### Sobre o pró-labore e o Fator R

O CNAE 6201-5/01 está sujeito ao **Fator R**: a empresa paga 6% (Anexo III) se a
folha de pagamento dos últimos 12 meses for **28% ou mais** da receita; caso
contrário, paga 15,5% (Anexo V).

Sem funcionários, a única "folha" é o seu pró-labore. Se ele ficar baixo demais,
a empresa cai no Anexo V. Em uma receita de R$ 5.000 por mês, a diferença é
grande:

| Enquadramento | Alíquota | Imposto sobre R$ 5.000 |
| --- | --- | --- |
| Anexo III (Fator R ≥ 28%) | 6% | R$ 300 |
| Anexo V (Fator R < 28%) | 15,5% | R$ 775 |

**Diferença: R$ 475 por mês.** Vale a conversa com o contador antes de emitir a
primeira nota.

### Atenção ao limite do ME

O teto do ME é **R$ 360.000 por ano** e vale para a empresa inteira. O
faturamento do Mercado Livre e o da prestação de serviço **somam** para esse
limite. Um contrato PJ de R$ 5.000 mensais acrescenta R$ 60.000 ao ano —
normalmente não é problema, mas confirme o quanto você já faturou no ano.

---

## 4. Informações complementares — o que escrever

Este campo é opcional, mas aqui ele ajuda. Sugestão:

```text
Tenho CNPJ ativo (ME), com situação cadastral regular, e posso emitir nota fiscal
de serviço desde o início do contrato. Disponibilidade imediata, período integral,
e disponibilidade para trabalhar em qualquer fuso do Brasil (home office).
```

**Por que isso funciona:** o recrutador de uma vaga PJ precisa saber que você não
vai atrasar a contratação esperando abrir empresa. Você já resolveu essa etapa.

---

## 5. Resumo do que preencher

| Campo | Resposta |
| --- | --- |
| Título | `Desenvolvedor Full Stack Júnior \| React, Node.js e APIs REST` |
| Resumo | conteúdo de `b2finance-resumo.txt` (3.662 caracteres) |
| CV em anexo | `Nicolas-Moreira-Ferreira-Curriculo-Backend.pdf` |
| Posto desejado | `Desenvolvedor Full Stack Júnior` |
| Entre R$ (Bruto Mensal) | `4.000` |
| e R$ (Bruto Mensal) | `5.500` |
| Jornada desejada | `Período Integral` |
| Tipo de contrato desejado | `Prestador de Serviços (PJ)` |
| Informações complementares | texto da seção 4 |
| Aceito a Política de Privacidade | marcar |

---

## 6. Ordem de execução

1. **Envie a candidatura agora** com os campos acima. A vaga tem 200+
   candidatos e 6 dias de publicação — cada dia pesa.
2. **Em paralelo**, mande a mensagem ao contador sobre o CNAE. Não precisa
   esperar: o CNAE só é necessário se você for contratado.
3. Se for aprovado, ajuste o CNAE e o pró-labore **antes** de emitir a primeira
   nota.

Nada aqui é bloqueio para se candidatar. É o que precisa estar pronto para o dia
em que a nota for emitida.

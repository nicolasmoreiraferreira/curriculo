# Currículo — Nicolas Moreira Ferreira

Currículo de **Nicolas Moreira Ferreira**, desenvolvedor full stack, em português e inglês.

**Site:** https://nicolasmoreiraferreira.github.io/curriculo/

## O que tem aqui

| Caminho | O que é |
| --- | --- |
| `site/` | Site permanente com o currículo completo em HTML e os PDFs para download |
| `cv/en.typ` · `cv/pt.typ` | Fontes do currículo em Typst — edite aqui, não no PDF |
| `pdf/` | PDFs gerados, uma página cada |

## Por que Typst e não um editor de texto

Currículo editado à mão desatualiza: você muda o telefone em um arquivo, esquece o outro, e a
versão em inglês fica com dado velho por meses. Aqui o conteúdo é código versionado — as duas
versões ficam no repositório, qualquer alteração é um commit com histórico, e gerar o PDF é um
comando.

## Como gerar os PDFs

Precisa do [Typst](https://typst.app) instalado.

```bash
cd cv
typst compile en.typ    # gera en.pdf
typst compile pt.typ    # gera pt.pdf
```

Depois de gerar, copie para o site (é o que o deploy publica):

```bash
cp cv/en.pdf pdf/Nicolas-Moreira-Ferreira-Curriculum-EN.pdf
cp cv/pt.pdf pdf/Nicolas-Moreira-Ferreira-Curriculo-PT.pdf
cp pdf/*.pdf site/
```

## Decisões de conteúdo

**Uma página cada.** Para quem busca a primeira vaga, o recrutador lê o currículo em menos de
um minuto. Uma segunda página quase vazia passa a impressão de que falta conteúdo — melhor
condensar em uma página densa e legível.

Ao entrar a certificação, o corpo do texto passou de 9,5pt para 9,2pt: era a forma de manter
todo o conteúdo existente em uma página, sem cortar projeto nem competência. Continua confortável
para leitura e o pipeline de publicação recusa qualquer versão que passe para duas páginas.

**Certificação com código de autenticação.** A badge aparece dentro de *Formação e certificações*,
com a carga horária real (4h) e o código de autenticação, para que quem lê possa conferir. Curso
sem comprovação não entra.

**Feito para leitura por máquina.** O formulário da Globant recebe o PDF e preenche o perfil
automaticamente. Por isso o layout é de coluna única, com texto extraível de verdade (não
imagem) e seções com títulos previsíveis: *Summary*, *Technical Skills*, *Projects*,
*Education*, *Languages*.

**Inglês declarado como básico.** O currículo diz exatamente o que é verdade — leio
documentação técnica e acompanho comunicação escrita; conversação ainda não fluente. Prometer fluência e não
sustentar na primeira pergunta queima a candidatura inteira.

**Projetos no lugar de experiência.** Não há experiência profissional formal ainda, e isso é
comum em quem busca a primeira vaga. Os projetos ocupam esse espaço com o que interessa:
problema, decisão técnica e resultado mensurável.

**Nada de "projetos de estudo".** Cada linha descreve o que o sistema faz e o que foi
resolvido. "Mais de 130 testes automatizados" e "idempotente por identificador de mensagem"
dizem mais que "aprendi React".

**Uma página obriga a escolher.** O espaço é disputado, então cada entrada precisa se pagar.
Quando os guardrails de agentes de IA entraram, a entrada do portfólio pessoal saiu no lugar
dela: o link do portfólio já está no cabeçalho, e repeti-lo como projeto ocupa uma linha
inteira sem dizer nada que o recrutador ainda não saiba. A camada de controle de IA, em
contrapartida, é o que menos aparece em currículo de quem está começando.

## Licença

O conteúdo é pessoal e não deve ser reutilizado como currículo por outra pessoa.

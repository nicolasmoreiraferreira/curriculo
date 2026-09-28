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

**Feito para leitura por máquina.** O formulário da Globant recebe o PDF e preenche o perfil
automaticamente. Por isso o layout é de coluna única, com texto extraível de verdade (não
imagem) e seções com títulos previsíveis: *Summary*, *Technical Skills*, *Projects*,
*Education*, *Languages*.

**Inglês declarado como básico.** O currículo diz exatamente o que é verdade — leio
documentação técnica e acompanho comunicação escrita, iniciando curso. Prometer fluência e não
sustentar na primeira pergunta queima a candidatura inteira.

**Projetos no lugar de experiência.** Não há experiência profissional formal ainda, e isso é
comum em quem busca a primeira vaga. Os projetos ocupam esse espaço com o que interessa:
problema, decisão técnica e resultado mensurável.

**Nada de "projetos de estudo".** Cada linha descreve o que o sistema faz e o que foi
resolvido. "Mais de 130 testes automatizados" e "idempotente por identificador de mensagem"
dizem mais que "aprendi React".

## Licença

O conteúdo é pessoal e não deve ser reutilizado como currículo por outra pessoa.

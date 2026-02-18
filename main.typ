#import "template/template.typ": *
#import "template/constants.typ" as const
#import "template/funcoes-auxiliares/abreviaturas.typ": adicionar-abreviatura
#show: template

= Espaçamento
== Espaçamento simples
#set par(leading: const.SINGLE-SPACING)
#lorem(30)@ibge1993 #lorem(20)

== Espaçamento um e meio
#set par(leading: const.ONE-AND-HALF-SPACING)
#lorem(30)@abntex2-wiki-como-customizar #lorem(20)

== Espaçamento duplo
#set par(leading: const.DOUBLE-SPACING)
#lorem(50)

= Headings
== Nível 2

#lorem(30)

=== Nível 3

#lorem(30)

==== Nível 4

#lorem(30)

===== Nível 5

#lorem(30)

= Citações

Uma vez, um anão medieval chamado Gimli disse: #quote(text(
  lang: "en",
  emph[Never trust an Elf!],
)).

#quote(
  attribution: "Einstein",
  lorem(50),
  block: true,
)

= Abreviaturas

Eu consigo adicionar abreviaturas utilizando a função auxiliar
`adicionar-abreviatura`. Por exemplo, a #adicionar-abreviatura(
  chave: "abnt",
  valor: "ABNT",
  descricao: "Associação Brasileira de Normas Toscas",
) deixa claro que a primeira vez que você utiliza um termo abreviado, ele deve
ser escrito por extenso e a a abreviatura deve vir logo em seguida entre
parênteses.

Assim, eu consigo citar coisas interessantes, como #adicionar-abreviatura(
  chave: "fcpremix",
  valor: [F.C.P.R.E.M.I.X],
  descricao: [Uma música legal do The Fall of Troy],
) ou a técnica de escrever bem código chamada de #adicionar-abreviatura(
  chave: "kiss",
  valor: [K.I.S.S.],
  descricao: [Keep It Simple Stupid],
).

= Símbolos

= Figuras
== Imagem
#figure(
  fonte: "Não foi preciso.",
  image("/shregory.png", width: 80%),
  caption: [O grande sábio de LaTeX, Shregory, nos ensinando como melhor
    escrever documentos WYSIWYM.],
)

== Tabela
#figure(
  fonte: "Vozes da minha cabeça.",
  align(center, table(
    columns: 4,
    table.header[Hello][World][!][?],
    [Herou], [Worudo], [!], [?],
    [Olá], [Mundo], [!], [?],
    [Bonjour], [Monde], [!], [?],
  )),
  caption: [Hello world table],
)

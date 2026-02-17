#import "template/template.typ": *
#import "template/constants.typ" as const
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

= Figuras
== Imagem
#figure(
  fonte: "Não foi preciso",
  image("template/elementos-pre-textuais/logo_unifor.png", width: 20%),
  caption: [Logo da Unifor],
)

== Tabela
#figure(
  fonte: "Vozes da minha cabeça",
  align(center, table(
    columns: 4,
    table.header[Hello][World][!][?],
    [Herou], [Worudo], [!], [?],
    [Olá], [Mundo], [!], [?],
    [Bonjour], [Monde], [!], [?],
  )),
  caption: [Hello world table],
)

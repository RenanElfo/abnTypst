#import "template/template.typ": *
#import "template/constants.typ": SINGLE-SPACING, ONE-AND-HALF-SPACING, DOUBLE-SPACING
#show: template

= Espaçamento
== Espaçamento simples
#set par(leading: SINGLE-SPACING)
#lorem(30)@ibge1993 #lorem(20)

=== Espaçamento um e meio
#set par(leading: ONE-AND-HALF-SPACING)
#lorem(30)@abntex2-wiki-como-customizar #lorem(20)

==== Espaçamento duplo
#set par(leading: DOUBLE-SPACING)
#lorem(50)

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

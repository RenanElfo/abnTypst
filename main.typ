#import "template/template.typ": template
#import "template/constants.typ" as const

#show: template

= Espaçamento
== Espaçamento simples
#set par(leading: const.SINGLE-SPACING)
#lorem(30)@ibge1993 #lorem(20)

=== Espaçamento um e meio
#set par(leading: const.ONE-AND-HALF-SPACING)
#lorem(30)@abntex2-wiki-como-customizar #lorem(20)

==== Espaçamento duplo
#set par(leading: const.DOUBLE-SPACING)
#lorem(50)

= Figuras
== Imagem
#figure(
  image("template/elementos-pre-textuais/logo_unifor.png", width: 20%),
  caption: [Hello World],
)

== Tabela
#figure(
  align(center, table(
    columns: 2,
    [Hello], [World],
    [Herou], [Worudo],
  )),
  caption: [Hello world table],
)

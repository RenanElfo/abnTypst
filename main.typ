#import "template.typ": template
#import "constants.typ" as const

#show: template

= Level 1
== Level 2
=== Level 3
==== Level 4
#set text(bottom-edge: "descender")
#set par(leading: const.SINGLE-SPACING)
#lorem(30)@ibge1993 #lorem(20)

#set par(leading: const.ONE-AND-HALF-SPACING)
#lorem(30)@abntex2-wiki-como-customizar #lorem(20)
"
#set par(leading: const.DOUBLE-SPACING)
#lorem(50)

#figure(
  image("elementos-pre-textuais/logo_unifor.png", width: 20%),
  caption: [Hello World]
)

#figure(
  align(center, table(columns: 2, [Hello], [World], [Herou], [Worudo])),
  caption: [Hello world table]
)

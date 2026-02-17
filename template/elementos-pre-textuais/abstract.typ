#import "../constants.typ": titulo-da-pagina
#import "/metadados.typ": keywords, abstract
#show: titulo-da-pagina.with(titulo: [Abstract])
#set par(first-line-indent: 0pt)

#abstract

*Keywords:* #keywords.reduce((acc, it) => acc + ". " + it).

#pagebreak()

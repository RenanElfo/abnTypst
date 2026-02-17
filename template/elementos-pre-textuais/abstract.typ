#import "../constants.typ": titulo-da-pagina
#import "/metadados.typ": keywords
#show: titulo-da-pagina.with(titulo: [Abstract])
#set par(first-line-indent: 0pt)

#import "/conteudo/abstract.typ" as abstract
#abstract

*Keywords:* #keywords.reduce((acc, it) => acc + ". " + it).

#pagebreak()

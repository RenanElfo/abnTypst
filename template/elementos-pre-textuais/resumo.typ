#import "../constants.typ": titulo-da-pagina
#import "/metadados.typ": palavras-chave, resumo
#show: titulo-da-pagina.with(titulo: [Resumo])
#set par(first-line-indent: 0pt)

#resumo

*Palavras-chave:* #palavras-chave.reduce((acc, it) => acc + ". " + it).

#pagebreak()

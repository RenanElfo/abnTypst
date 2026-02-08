#import "../constants.typ" as const
#import "../parameters.typ" as param
#show: const.titulo-da-pagina.with(titulo: [Resumo])
#set par(first-line-indent: 0pt)

#import "../conteudo/resumo.typ" as resumo
#resumo

*Palavras-chave:* #param.palavras-chave.reduce((acc, it) => acc + ". " + it).

#pagebreak()

#import "../constants.typ" as const
#import "../parameters.typ" as param
#show: const.titulo-da-pagina.with(titulo: [Abstract])
#set par(first-line-indent: 0pt)

#import "../conteudo/abstract.typ" as abstract
#abstract

*Keywords:* #param.keywords.reduce((acc, it) => acc + ". " + it).

#pagebreak()

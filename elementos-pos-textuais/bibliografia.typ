#import "/constants.typ" as const
#import "/parameters.typ" as parameters

#pagebreak()
// #const.titulo-da-pagina([Referências])
#show bibliography: it => {
  show heading: h => {
    show: const.titulo-da-pagina.with(titulo: it.title)
    h
  }
  it
}
#bibliography(
  "referencias.bib",
  title: [Referências],
  style: if parameters.referencias-numericas {
    "referencias-numericas.csl"
  } else {
    "referencias.csl"
  },
)

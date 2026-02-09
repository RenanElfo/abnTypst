#import "/template/constants.typ" as const
#import "/parameters.typ" as parameters

#pagebreak()
#show bibliography: it => {
  show heading: h => none
  show: const.titulo-da-pagina.with(titulo: it.title)
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

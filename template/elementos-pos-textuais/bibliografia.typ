#import "/template/constants.typ": titulo-da-pagina
#import "/metadados.typ": referencias-numericas

#pagebreak()
#show bibliography: it => {
  show heading: h => none
  show: titulo-da-pagina.with(titulo: it.title)
  it
}
#bibliography(
  "referencias.bib",
  title: [Referências],
  style: if referencias-numericas {
    "referencias-numericas.csl"
  } else {
    "referencias.csl"
  },
)

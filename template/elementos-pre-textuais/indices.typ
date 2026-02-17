#import "../constants.typ": titulo-da-pagina
#import "/metadados.typ": impressao-frente-e-verso
#set outline(title: [])
#show outline.entry: it => link(
  it.element.location(),
  it.indented([#it.prefix() ---], [#it.inner()]),
)
#let listas = ()

#listas.push([
  #show: titulo-da-pagina.with(titulo: [Lista de ilustrações])
  #outline(target: figure.where(kind: image))
])

#listas.push([
  #show: titulo-da-pagina.with(titulo: [Lista de tabelas])
  #outline(target: figure.where(kind: table))
])

#listas.push([
  #import "/conteudo/lista-de-abreviaturas.typ": abreviaturas
  #show: titulo-da-pagina.with(titulo: [Lista de abreviaturas e siglas])
  #v(1cm)
  #set align(right)
  #block(width: 90%)[
    #set align(left)
    #grid(
      columns: (1fr, 4fr),
      row-gutter: 8pt,
      column-gutter: 4pt,
      inset: 1pt,
      ..abreviaturas,
    )
  ]
])

#listas.push([
  #import "/conteudo/lista-de-simbolos.typ": simbolos
  #show: titulo-da-pagina.with(titulo: [Lista de símbolos])
  #v(1cm)
  #set align(right)
  #block(width: 90%)[
    #set align(left)
    #grid(
      columns: (1fr, 5fr),
      row-gutter: 8pt,
      column-gutter: 4pt,
      inset: 1pt,
      ..simbolos,
    )
  ]
])

#listas.reduce((acc, it) => acc + pagebreak() + it)
#pagebreak(to: if impressao-frente-e-verso { "odd" } else { none })

#show outline.entry: it => [
  #let size = if (
    type(it.element) == content and it.element.func() == heading
  ) {
    let level = it.element.level
    if level == 1 {
      1.4em
    } else if level == 2 {
      1.2em
    } else {
      1.0em
    }
  } else {
    1.0em
  }
  #set text(size: size)
  #grid(
    columns: (1fr, 7fr),
    align: bottom,
    it.prefix(), it.inner(),
  )
]
#show outline.entry: it => link(it.element.location(), it)
#show outline.entry: it => {
  if it.element.func() == heading and it.element.level == 1 {
    upper(it)
  } else {
    it
  }
}

#show: titulo-da-pagina.with(titulo: [Sumário])
#outline()
#pagebreak()

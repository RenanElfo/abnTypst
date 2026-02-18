#import "/parameters.typ": impressao-frente-e-verso
#import "/template/funcoes-auxiliares/titulo-da-pagina.typ": titulo-da-pagina

#let indices() = {
  let listas = state("listas", ())

  let adicionar-figuras(titulo-da-lista, target: none) = {
    listas.update(old => {
      old.push({
        show: titulo-da-pagina.with(titulo: titulo-da-lista)
        outline(target: target)
      })
      old
    })
  }

  let adicionar-explicacoes(titulo-da-lista, explicacoes) = {
    let lista-flattened = explicacoes
      .sorted(key: t => t.chave)
      .map(t => (t.valor, t.significado))
      .flatten()

    listas.update(old => {
      old.push([
        #show: titulo-da-pagina.with(titulo: titulo-da-lista)
        #set align(right)
        #block(width: 90%)[
          #set align(left + horizon)
          #grid(
            columns: (1fr, 4fr),
            row-gutter: 8pt,
            column-gutter: 4pt,
            inset: 1pt,
            ..lista-flattened,
          )
        ]
      ])
      old
    })
  }

  let imprimir-listas() = context {
    listas.get().reduce((acc, it) => acc + pagebreak() + it)
    pagebreak(to: if impressao-frente-e-verso { "odd" } else { none })
  }

  (adicionar-figuras, adicionar-explicacoes, imprimir-listas)
}

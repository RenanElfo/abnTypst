#import "titulo-da-pagina.typ": titulo-da-pagina

#let formatar-explicacoes(titulo-da-lista, explicacoes) = {
  if explicacoes.len() == 0 {
    return none
  }
  let lista-flattened = explicacoes
    .sorted(key: t => t.at(0))
    .map(t => t.at(1))
    .map(t => (t.valor, t.descricao))
    .flatten()

  [
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
  ]
}


#let checar-parametros(chave, valor, descricao) = {
  if chave == none or valor == none or descricao == none {
    panic("Chave, valor e descricao sao parametros necessarios.")
  }
}

#let abreviaturas() = {
  let lista-de-abreviaturas = state("abreviaturas", (:))

  let adicionar-abreviatura(chave: none, valor: none, descricao: none) = {
    checar-parametros(chave, valor, descricao)
    lista-de-abreviaturas.update(old => {
      old.insert(chave, (valor: valor, descricao: descricao))
      old
    })

    [#descricao (#valor)]
  }

  let get-abreviaturas() = context {
    formatar-explicacoes(
      [Lista de abreviaturas e siglas],
      lista-de-abreviaturas.final().pairs(),
    )
  }

  (adicionar-abreviatura, get-abreviaturas)
}
#let (adicionar-abreviatura, get-abreviaturas) = abreviaturas()

#let simbolos() = {
  let lista-de-simbolos = state("simbolos", (:))

  let adicionar-simbolo(
    chave: none,
    valor: none,
    descricao: none,
    tipo: none,
  ) = {
    checar-parametros(chave, valor, descricao)
    lista-de-simbolos.update(old => {
      old.insert(chave, (valor: valor, descricao: descricao))
      old
    })
  }

  let get-simbolos() = context {
    formatar-explicacoes(
      [Lista de símbolos],
      lista-de-simbolos.final().pairs(),
    )
  }

  (adicionar-simbolo, get-simbolos)
}

#let (adicionar-simbolo, get-simbolos) = simbolos()

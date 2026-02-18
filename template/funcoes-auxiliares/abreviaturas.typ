#let abreviaturas() = {
  let lista-de-abreviaturas = state("abreviaturas", (:))

  let adicionar-abreviatura(chave: none, valor: none, descricao: none) = {
    if chave == none or valor == none or descricao == none {
      panic("Chave, valor e descricao sao parametros necessarios.")
    }
    lista-de-abreviaturas.update(old => {
      old.insert(chave, (valor: valor, descricao: descricao, location: context here()))
    })

    [#descricao (#valor)]
  }

  let localizacoes() = context {
    lista-de-abreviaturas
      .get()
      .values()
      .map(it => it.at(2))
  }

  (adicionar-abreviatura, localizacoes)
}
#let (adicionar-abreviatura, localizacoes) = abreviaturas()

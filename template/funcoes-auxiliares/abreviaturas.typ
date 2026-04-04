#import "explicacoes.typ": checar-parametros, formatar-explicacoes

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

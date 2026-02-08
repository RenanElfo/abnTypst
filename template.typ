#let template = doc => {
  import "constants.typ" as const
  import "parameters.typ" as parameters

  import "elementos-pre-textuais/capa.typ" as capa
  import "elementos-pre-textuais/folha-de-rosto.typ" as folha-de-rosto
  import "elementos-pre-textuais/ficha-catalografica.typ" as ficha-catalografica
  import "elementos-pre-textuais/folha-de-aprovacao.typ" as folha-de-aprovacao
  import "elementos-pre-textuais/dedicatoria.typ" as dedicatoria
  import "elementos-pre-textuais/agradecimentos.typ" as agradecimentos
  import "elementos-pre-textuais/epigrafe.typ" as epigrafe
  import "elementos-pre-textuais/abstract.typ" as abstract
  import "elementos-pre-textuais/indices.typ" as indices
  import "elementos-pre-textuais/resumo.typ" as resumo

  let x-margin = if parameters.impressao-frente-e-verso {
    (inside: 3cm, outside: 2cm)
  } else {
    (left: 3cm, right: 2cm)
  }

  set document(
    title: parameters.titulo-do-trabalho,
    author: (parameters.nome-do-autor),
    description: [#resumo],
    keywords: parameters.palavras-chave + parameters.keywords,
  )
  set page(
    "a4",
    margin: (top: 3cm, bottom: 2cm, ..x-margin),
  )
  set par(
    justify: true,
    first-line-indent: (all: true, amount: 1.3cm),
    spacing: 1.2em,
    leading: const.ONE-AND-HALF-SPACING,
  )
  set text(size: 12pt, lang: "pt", region: "br", bottom-edge: "descender")
  set enum(numbering: "a)")
  show link: set text(fill: rgb("#0000ee"))
  set heading(numbering: "1.1")
  // Isto esta comentado aqui ate eu descobri uma maneira melhor
  // de saber o tamanho da fonte no sumario sem precisar de
  // valores hard coded
  // #show heading: it => {
  //   let heading-font-size = state("heading-font-size")
  //   heading-font-size.update(text.size)
  //   it
  // }
  capa.imprimir()
  folha-de-rosto.imprimir()
  ficha-catalografica.imprimir()
  folha-de-aprovacao.imprimir()
  dedicatoria.imprimir()
  agradecimentos.imprimir()
  epigrafe.imprimir()
  resumo.imprimir()
  abstract.imprimir()
  indices.imprimir()

  doc

  include "elementos-pos-textuais/bibliografia.typ"
}

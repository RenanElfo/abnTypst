#let template = doc => {
  import "constants.typ" as const
  import "/parameters.typ" as parameters
  import "/conteudo/resumo.typ" as resumo

  set document(
    title: parameters.titulo-do-trabalho,
    author: (parameters.nome-do-autor),
    description: [#resumo],
    keywords: parameters.palavras-chave + parameters.keywords,
  )

  let x-margin = if parameters.impressao-frente-e-verso {
    (inside: 3cm, outside: 2cm)
  } else {
    (left: 3cm, right: 2cm)
  }
  set page("a4", margin: (top: 3cm, bottom: 2cm, ..x-margin))
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

  set table(stroke: (x, y) => (
    top: if y <= 1 { 1pt } else { 0pt },
    bottom: 1pt,
  ))

  show figure: it => {
    text(size: 10em / 12, it.caption)
    it.body
  }

  include "elementos-pre-textuais/capa.typ"
  include "elementos-pre-textuais/folha-de-rosto.typ"
  include "elementos-pre-textuais/ficha-catalografica.typ"
  include "elementos-pre-textuais/folha-de-aprovacao.typ"
  include "elementos-pre-textuais/dedicatoria.typ"
  include "elementos-pre-textuais/agradecimentos.typ"
  include "elementos-pre-textuais/epigrafe.typ"
  include "elementos-pre-textuais/resumo.typ"
  include "elementos-pre-textuais/abstract.typ"
  include "elementos-pre-textuais/indices.typ"

  doc

  include "elementos-pos-textuais/bibliografia.typ"
}

#let built-in-figure = figure
#let figure(fonte: none, ..args) = {
  if fonte == none {
    panic("")
  }
  align(center, block(breakable: false, {
    built-in-figure(..args)
    text(size: 10em / 12, { "Fonte: " + fonte })
  }))
}

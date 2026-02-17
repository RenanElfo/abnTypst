#let simbolos = (
  (
    chave: "coracao",
    tipo: "simbolo",
    conteudo: text(fill: rgb("#cc3333"), sym.suit.heart),
    significado: [Coraçãozinho]
  ),
  (
    chave: "espada",
    tipo: "simbolo",
    conteudo: sym.suit.spade,
    significado: [Espadinha]
  ),
  (
    chave: "paus",
    tipo: "simbolo",
    conteudo: sym.suit.club,
    significado: highlight(fill: black)[Piroquinha] + [ Redatado],
  ),
  (
    chave: "ouros",
    tipo: "simbolo",
    conteudo: text(fill: rgb("#cc3333"), sym.suit.diamond),
    significado: [Losanguinho]
  ),
  (
    chave: "sigma",
    tipo: "grego",
    conteudo: $sigma$,
    significado: "Constante de Stefan-Boltzmann"
  ),
  (
    chave: "x",
    tipo: "subscrito",
    conteudo: $x$,
    significado: [Derivada em relação a $x$]
  ),
  (
    chave: "tensor",
    tipo: "sobrescrito",
    conteudo: $arrow(arrow(" "))$,
    significado: [Tensor de segunda ordem]
  )

)

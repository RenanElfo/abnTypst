#let simbolos = (
  (
    chave: "coracao",
    tipo: "simbolo",
    valor: text(fill: rgb("#cc3333"), sym.suit.heart),
    significado: [Coraçãozinho]
  ),
  (
    chave: "espada",
    tipo: "simbolo",
    valor: sym.suit.spade,
    significado: [Espadinha]
  ),
  (
    chave: "paus",
    tipo: "simbolo",
    valor: sym.suit.club,
    significado: highlight(fill: black)[Piroquinha] + [ Redatado],
  ),
  (
    chave: "ouros",
    tipo: "simbolo",
    valor: text(fill: rgb("#cc3333"), sym.suit.diamond),
    significado: [Losanguinho]
  ),
  (
    chave: "sigma",
    tipo: "grego",
    valor: $sigma$,
    significado: "Constante de Stefan-Boltzmann"
  ),
  (
    chave: "x",
    tipo: "subscrito",
    valor: $f_x$,
    significado: [Derivada de $f$ em relação a $x$]
  ),
  (
    chave: "tensor",
    tipo: "sobrescrito",
    valor: $arrow(arrow("A"))$,
    significado: [Tensor de segunda ordem de A.]
  )

)

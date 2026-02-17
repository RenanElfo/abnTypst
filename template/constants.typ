#import "/metadados.typ": data, local, tipo-de-trabalho, curso, instituicao, titulacao

#let MONTHS = (
  "janeiro",
  "fevereiro",
  "março",
  "abril",
  "maio",
  "junho",
  "julho",
  "agosto",
  "setembro",
  "outubro",
  "novembro",
  "dezembro",
)

#let DATA = (
  dia: data.day(),
  mes: MONTHS.at(data.month() - 1),
  ano: data.year(),
)
#let LOCAL-E-DATA = align(center, upper(strong[
  #local\
  #DATA.mes, #DATA.ano
]))
#let TEXTO-DA-FOLHA-DE-ROSTO = grid(
  columns: (1fr, 1fr),
  [],
  [
    #set align(left)
    #tipo-de-trabalho apresentada ao #curso da #instituicao,
    como parte dos requisitos para obtenção do título de #titulacao
  ],
)

#let SINGLE-SPACING = 0.15em
#let ONE-AND-HALF-SPACING = 0.5em
#let DOUBLE-SPACING = 1.0em

#let titulo-da-pagina(it, titulo: none) = {
  if titulo == none {
    panic("")
  }
  {
    set text(weight: "bold")
    align(center)[#text(size: 24pt, titulo)]
  }

  it
}

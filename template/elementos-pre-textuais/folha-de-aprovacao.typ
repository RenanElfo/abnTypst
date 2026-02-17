#import "../constants.typ": DATA, TEXTO-DA-FOLHA-DE-ROSTO
#import "/metadados.typ": autor, titulo, orientador, coorientadores, instituicao
#set align(center)
#text(size: 14pt, autor)

#v(1cm)
#block(width: 90%, strong(text(size: 16pt, titulo)))

#v(1cm)
#TEXTO-DA-FOLHA-DE-ROSTO

#v(1cm)
#let dia = DATA.dia
#let dia = if dia != 1 [#dia] else [1º]
#align(left)[
  Aprovado(a) em: #dia de #lower(DATA.mes) de
  #DATA.ano
]

#v(1cm)
#[
  #set align(center)
  #upper()[Banca Examinadora]
]

#v(1cm)
#{
  set text(size: 12pt, hyphenate: false)
  set block(width: 6cm, inset: (top: 0.3cm), stroke: (top: 1pt))
  block[#orientador#linebreak()Orientador -- #instituicao]
  linebreak()
  for coorientador in coorientadores {
    block[#coorientador#linebreak()Coorientador -- #instituicao]
    linebreak()
  }
  block[#autor#linebreak()#instituicao]
}

#pagebreak()

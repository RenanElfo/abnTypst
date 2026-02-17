#import "../constants.typ": TEXTO-DA-FOLHA-DE-ROSTO, LOCAL-E-DATA
#import "/metadados.typ": autor, titulo, instituicao, orientador, coorientadores
#set align(center)
#text(size: 14pt, autor)

#v(3cm)
#block(width: 90%, strong(text(size: 16pt, titulo)))

#v(3cm)
#TEXTO-DA-FOLHA-DE-ROSTO

#v(3cm)
#text(size: 12pt)[#instituicao]

#v(3cm)
#[
  #set text(size: 12pt)
  Orientador: #orientador\
  #for coorientador in coorientadores [
    Coorientador: #coorientador\
  ]
]

#v(1fr)
#LOCAL-E-DATA
#pagebreak()

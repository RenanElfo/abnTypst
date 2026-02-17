#let impressao-frente-e-verso = true
#let referencias-numericas = true

// -- Configuração da fonte --
// O Typst escaneia o array do primeiro ao último elemento, e implementa
// a primeira fonte que existir no sistema.
// Dividido entre fonte do texto, fonte para expressões matemáticas, e
// fonte para código.
#let fontes = (
  text: ("Latin Modern Roman", "Hiragino Mincho", "New York"),
  heading: ("Latin Modern Roman", "Hiragino Mincho"),
  math: ("Latin Modern Math"),
  code: ("Latin Modern Mono")
)

// Referentes ao trabalho em si
#let titulo = "Modelagem analítica da eletrodinâmica astrológica de anões medievais"
#let autor = "Renan \"Elfo\" Aguiar"
#let tipo-de-trabalho = "Tese"
#let titulacao = "Doutor em Informática Aplicada"
#let palavras-chave = ("Eletrodinâmica", "Astrologia", "Anões", "Medieval")
#let keywords = ("Electronic", "Astrology", "Dwarves", "Medieval")

#let abstract = [I'm not dog no, for I live so humble. I'm not dog no, for you be so very far.
You don't know understand who is love, who is like. You just know get it
mistake. And so there I go away. Worst thing of the world is to love very back.]

#let resumo = [Uma modelagem analítica da eletrodinâmica de anões medievais foi feita a partir
da aplicação das equações de Maxwell na sua forma diferencial na barba de cada
um dos indivíduos analisados. Os anões foram categorizados pelo seus signos do
zodíaco e a modelagem foi então utilizada para prever a resposta em frequência
de cada anão em um grupo de teste.]

// Referentes às outras pessoas envolvidas
#let orientador = "Mestre dos Magos"
#let coorientadores = ("Mestre Splinter", "Senhor Miyagi")
#let coordenador = "Albus Dumbledore"
#let banca = () // Tem que pensar em como estruturar os dados da banca

// Referentes à Instituição
#let instituicao = "Universidade de Fortaleza -- UNIFOR"
#let departamento = "Departamento de Computação (?)"
#let curso = "Programa de Pós-Graduação em informática aplicada -- PPGIA"
#let area-de-concentracao = "Computação Arcana"
#let linha-de-pesquisa = "Algoritmos Rúnicos"

// Informações específicas a esta instituição
#let fundacao = "Fundação Edson Queiroz"
#let vice-reitoria = "Vice-Reitoria de Ensino de Graduação e Pós-Graduação --
  VRE"
#let diretoria = "Diretoria de Pós-Graduação"

// Referentes ao local
#let local = "Xique-Xique -- BA"
#let data = datetime(
  day: 7,
  month: 10,
  year: 1582,
)

// Referente à epígrafe
#let epigrafe = (
  frase: [
    O problema de citações encontradas na Internet é que elas estão
    frequentemente erradas
  ],
  autor: "Einstein",
)

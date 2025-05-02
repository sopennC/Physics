#import "@preview/cetz:0.3.4": canvas, draw, tree
#set text(14pt, lang: "ru", hyphenate: true)
#set page(
  margin: (x: 1.5cm, y: 1.5cm)
)
#set par(
  justify: true,
  first-line-indent: (amount: 0.75cm, all: true)
)

= Момент импульса

*_Моментом импульса_* материальной точки относительно точки $O$ является:
$
accent(L, arrow) = accent(r, arrow) times accent(p, arrow),
$
где $accent(p, arrow)$ -- импульс материальной точки, а $accent(r, arrow)$ -- радиус-вектор от точки $O$ до материальной точки.

Как видим, в формуле используется векторное произведение. Получается, направление итогового вектора (т.е. вектора момента импульса $accent(L, arrow)$) можно узнать по правилу определения правой и левой тройки векторов:

#align(center)[
#set text(8pt)
#canvas(length: 2cm, {
  import draw: *
  line((0,0,0), (1,0.5,0), mark: (end: ">", scale: 0.5), fill: black)
  content((0.8,0.5), $accent(r, arrow)$)

  circle((1,0.5,0), radius: 1pt, fill: black)

  line((1,0.5,0), (1.75,0.5,0), mark: (end: ">", scale: 0.5), fill: black)
  content((1.8,0.6), $accent(p, arrow)$)

  line((0,0,0), (0.75,0,0), mark: (end: ">", scale: 0.5), fill: black, stroke: (dash: "dashed"))
  content((0.85,0.1), $(accent(p, arrow))$)

  circle((1,0.5,0), radius: 1pt, fill: black)

  line((0,0,0), (0,0,1), mark: (end: ">", scale: 0.5), fill: black)
  content((-0.6,-0.5), $accent(L, arrow)$)

  circle((0,0,0), radius: 1pt, fill: black)
  content((-0.05,0.1), $O$)

  arc((1.2,0.45), start: 70deg, stop: -120deg, radius: 0.15, mark: (end: ">", scale: 0.5, fill: black))

  arc((0.34,0.15), start: 60deg, stop: -60deg, radius: 0.1, stroke: (dash: "dashed"))

  content((0.485,0.11), $Theta$)
})
]

На рисунке изображены два вектора $accent(r, arrow)$ и $accent(p, arrow)$. Сделали проекцию вектора $accent(p, arrow)$ в начало точки $O$. Определяем, что это левая тройка. Следовательно, итоговый вектор $accent(L, arrow)$ направлен вниз.

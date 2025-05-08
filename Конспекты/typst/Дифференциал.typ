#import "@preview/cetz:0.3.4": canvas, draw, angle
#import "@preview/cetz-plot:0.1.1": plot
#set text(14pt, lang: "ru", hyphenate: true)
#set page(
  margin: (x: 1.5cm, y: 1.5cm)
)
#set par(
  justify: true,
  first-line-indent: (amount: 0.75cm, all: true)
)
#set math.equation(numbering: "(1)")

= Введение

Допустим, аргумент функции $y = f(x)$ изменяется на число $Delta x$. Тогда сама функция изменяется на число $Delta y$. Записать это изменение можно следующим образом:
$
Delta y = f(x + Delta x) - f(x) 
$ <real>

Это называется реальным изменением функции при приращении аргумента $Delta x$.

= Производная

_Производной_ называется мгновенная скорость изменения функции, т.е. скорость изменения функции за очень короткий промежуток времени.

$
f'(x) = lim_(Delta x -> 0) frac(Delta y, Delta x),
$
где $Delta y$ -- реальное изменение функции (@real), а $Delta x$ -- приращение аргумента функции, стремящееся к нулю.

Поскольку приращение стремится к нулю, но не достигает его, то остается очень маленький остаток. Следовательно, изменение функции при данном приращении можно записать следующим образом:
$
Delta y = f'(x) dot Delta x + o(Delta x) 
$<proiz>

Здесь линейной частью приращения функции является $f'(x) dot Delta x$.

= Дифференциал

Под _дифференциалом_ подразумевается линейная часть приращения функции (@proiz).

Запишем @proiz в новом виде:
$
upright(d)y = f'(x) upright(d)x \
arrow.b.double \
frac(upright(d)y, upright(d)x) = f'(x)
$

#underline(stroke: 1pt, offset: 2pt, [#smallcaps[ПРИМЕР]])

Элементарная работа $A$, совершаемая силой $accent(F, arrow)$ при бесконечно малом перемещении $upright(d)accent(r, arrow)$, равна
#footnote[В данном случае подразумевается скалярное произведение векторов.]
$
upright(d)A = accent(F, arrow) dot upright(d)accent(r, arrow) = F dot |upright(d)r| dot cos(Theta) 
$

Получается, $accent(F, arrow)$ -- это производная функции $A$. Т.е. за мгновенную скорость изменения работы силы отвечает эта сила.

#let f1(x) = calc.sin(x)
#set text(size: 10pt)
#canvas({
  import draw: *
  import angle: *

  plot.plot(size: (12, 8),
  axis-style: none,
  y-tick-step: 2, y-min: -2.5, y-max: 2.5,
  {
    let domain = (-1.1 * calc.pi, +1.1 * calc.pi)
    plot.add(f1, domain: domain, style: (stroke: black))
  })

  line(
    (calc.pi * 2.7, calc.pi * 1.78),
    (calc.pi * 2.5 + 2, calc.pi * 1.79),
    mark: (end: ">", fill: black),
    name: "r"
  ) 
  content((calc.pi * 2.7 + 1.5, calc.pi * 1.78), [$accent(r, arrow)$])

  line(
    (calc.pi * 2.7, calc.pi * 1.78),
    (calc.pi * 2.5 + 2, calc.pi * 2.5),
    mark: (end: ">", fill: black),
    name: "F"
  ) 
  content((calc.pi * 2.5 + 1.5, calc.pi * 2.5), [$accent(F, arrow)$])

  angle("r.start", "r.end", "F.end", stroke: (dash: "dashed"))
  content(("r.mid", 10pt, "F.mid"), [$Theta$])
})

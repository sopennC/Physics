#import "@preview/cetz:0.3.4": canvas, draw
#import "@preview/cetz-plot:0.1.1": plot
#set text(14pt, lang: "ru", hyphenate: true)
#set page(
  margin: (x: 1.5cm, y: 1cm)
)
#set par(
  justify: true,
  first-line-indent: (amount: 0.75cm, all: true)
)
#set math.equation(numbering: "(1)")
#show ref: it => {
  let eq = math.equation
  let el = it.element
  if el != none and el.func() == eq {
    link(el.location(),numbering(
      el.numbering,
      ..counter(eq).at(el.location())
    ))
  } else {
    it
  }
}
#let nonum(eq) = math.equation(block: true, numbering: none, eq)

= Линейные формулы
Формула мгновенной линейной скорости:#footnote[Под $S$ подразумевается функция, описывающая зависимость пути, пройденного материальной точкой, от времени]
$
v = frac(upright(d)S, upright(d)t)
$<lin>

Формула средней линейной скорости:
$
angle.l v angle.r = frac(S, Delta t)
$

При равномерном движении используется следующая (привычная нам) формула:
$
v = frac(S, t)
$

#v(1.5cm)

Формулой мгновенного ускорения является производная функции скорости по времени:
$
a = frac(upright(d)v, upright(d)t)
$

Формула среднего ускорения:
$
angle.l a angle.r = frac(Delta v, Delta t)
$

Запишем формулы при равноускоренном движении:

#box(stroke: black, inset: 5pt)[ПРИМЕР]

$x = A t^2 + B t + C$, где $A$, $B$ и $C$ -- постоянные коэффициенты. Тогда
#nonum(
$
v = 2A t + B \
arrow.b.double \
a = 2A arrow.r.double A = frac(a, 2)
$
)
Тогда $v_0 = B$ (начальная скорость), т.к. при $t=0 arrow.r.double v = B$, а $x_0 = C$, т.к. при $t=0 arrow.r.double x = C$, т.е. начальная координата.

Запишем наше уравнение в новом виде:
#nonum(
  $
  x = frac(a t^2, 2) + v_0t + x_0 \
  arrow.b.double \
  x - x_0 = frac(a t^2, 2) + v_0t \
  arrow.b.double \
  v = frac(a t, 2) + v_0 #text[(постоянная скорость)] \
  arrow.b.double \
  v t = frac(a t^2, 2) + v_0t \
  arrow.b.double \
  S = frac(a t^2, 2) + v_0t #text[(путь при равноускоренном движении)]
  $
)


= Связь угловых и линейных формул

При вращательном движении формула мгновенной угловой скорости аналогична формуле @lin, только переменные другие:
$
omega = frac(upright(d)phi, upright(d)t),
$
Здесь $phi$ -- угол (в радианах), на который повернулся радиус-вектор за время $t$.

Мгновенная угловая скорость выражается аналогичной линейной:
$
epsilon = frac(upright(d)omega, upright(d)t) = frac(upright(d)^2phi, upright(d)^2t)
$

#v(1.5cm)

Если $S$ -- длина други, $phi$ -- угол (в радианах)#footnote[Можно найти формулу длины дуги в виде $S = frac(pi omega r, 180 degree)$, но в нашем случае угол в радианах, потому часть $frac(pi, 180 degree)$ опускается.], на который радиус-вектор повернулся, а $r$ -- радиус окружности, то
$
S = phi dot r
$<all>

Формула @all помогает получить несколько полезных формул:
$
frac(upright(d)S, upright(d)t) = frac(upright(d)phi, upright(d)t) dot r arrow.r.double v = omega dot r \
frac(upright(d)^2S, upright(d)^2t) = frac(upright(d)^2phi, upright(d)^2t) dot r arrow.r.double a = epsilon dot r
$

Радиус не дифференцируется, т.к. при движении по окружности он остается один и тот же, т.е. константой.

= Частота и период вращения

Формула _частоты_ вращения:
$
n = frac(omega, 2pi) thick frac(#text[об], #text[с])
$

Формула периода вращения:
$
T = frac(2pi, omega) = frac(1, n) thick frac(#text[с], #text[об])
$

= Движение при криволинейном движении

Положение движущейся материальной точки по окружности будем задавать с помощью радиус-вектора, проведенного из центра окружности.

#align(center)[
#let f1(x) = calc.sqrt(1 - calc.pow(x, 2))
#set text(size: 10pt)
#canvas({
  import draw: *
  import angle: *

  plot.plot(size: (6, 6),
  axis-style: none,
  y-min: -1, y-max: 1,
  {
    let domain = (-1, +1)
    plot.add(f1, domain: domain, style: (stroke: black))
  })

  circle((3,3), radius: 0.5pt, fill: black)
  content((3,2.8), $O$)

  line((3,3), (2.3,5.9), mark: (end: ">", fill: black, scale: 0.5))
  content((2.4, 4.5), $r_1$)
  line((2.3,5.915), (3.8,6.3), mark: (end: ">", fill: black, scale: 0.5))
  content((3.9,6.5), $accent(v_1, arrow)$)

  line((3,3), (3.2,6), mark: (end: ">", fill: black, scale: 0.5))
  content((3.4, 4.5), $r_2$)
  line((3.2,6), (4.8,5.8), mark: (end: ">", fill: black, scale: 0.5))
  content((5.0,5.8), $accent(v_2, arrow)$)

  line((2.3,5.9), (3.2,6), mark: (end: ">", fill: black, scale: 0.5))
  content((2.75,5.7), $Delta r$)
})
]

#set text(14pt, lang: "ru", hyphenate: true)
Пусть $r_1 = r_1(t)$, а $r_2 = r_2(t+Delta t)$. Тогда $Delta r = r_2 - r_1$.

Найдем среднюю скорость:
$
v_(#text[ср]) = frac(Delta r, Delta t)
$

Мгновенной же скоростью будет формула:
$
v = frac(upright(d)r, upright(d)t) = lim_(Delta t -> 0) frac(Delta r, Delta t)
$

Мгновенное ускорение находится как обычно:
$
a = frac(upright(d)v, upright(d)t)
$

#v(1.5cm)

Пусть материальная точка движется по окружности радиуса $r$ со скоростью $v$, направленной по касательной. Тогда можно записать:
$
v = omega r = frac(2 pi, T) dot r
$<v>

Возьмем случай, когда радиусом окружности будет $v$, а по касательной будет направлено ускорение материальной точки. Тогда можно записать:
$
a = omega v = frac(2 pi, T) dot v
$<a>

Но вспомним уравнение @v и умножим и разделим уравнение @a на $r$:
$
a = underbrace(frac(2 pi r, T), v) dot frac(v, r) = frac(v^2, r)
$

Мы получили формулу *центростремительного (нормальным) ускорения*.

Для задания ускорения в виде вектора используется единичный вектор нормали, направленный от материальной точки к центру окружности $O$:
$
accent(a, arrow) = frac(v^2, r) accent(n, arrow)
$<center>

#v(1.5cm)

Для представления скорости в виде вектора воспользуемся единичным вектором касательной к окружности $accent(tau, arrow)$, т.е. $accent(v, arrow) = v accent(tau, arrow)$. Тогда
$
accent(a, arrow) = frac(upright(d), upright(d)t) (v accent(tau, arrow))
$<tau>
#align(center)[
#let f1(x) = calc.sqrt(1 - calc.pow(x, 2))
#set text(size: 10pt)
#canvas({
  import draw: *
  import angle: *

  plot.plot(size: (6, 6),
  axis-style: none,
  y-min: -1, y-max: 1,
  {
    let domain = (-1, +1)
    plot.add(f1, domain: domain, style: (stroke: black))
  })

  line((3,6), (1.5, 6), mark: (end: ">", fill: black, scale: 0.5))
  content((1.6,6.2), $accent(tau, arrow)$)
  line((3,6), (0, 6), mark: (end: ">", fill: black, scale: 0.5))
  content((0,6.2), $accent(v, arrow)$)
})
]

При равномерном вращении значение скорости постоянно, а вот направление скорости (за это отвечает вектора $accent(tau, arrow)$) может изменяться. Запишем формулу ускорения:
$
accent(a, arrow) = v frac(upright(d)tau, upright(d)t)
$ <start>

Но вспомним уравнение @center и запишем следующее:
$
frac(upright(d)tau, upright(d)t) = frac(v,r) accent(n, arrow)
$

Но при равномерном вращении ускорение направлено как в центр окружности, так и по касательной.
Запишем уравнение @tau по свойству дифференциала:
$
accent(a, arrow) = frac(upright(d)v, upright(d)t) accent(tau, arrow) + v frac(upright(d)tau, upright(d)t)
$

За второе слагаемое суммы отвечает центростремительное ускорение (уравнение @center):
$
accent(a, arrow) = frac(upright(d)v, upright(d)t) accent(tau, arrow) + frac(v^2, r) accent(n, arrow)
$

Первое слагаемое суммы называется *тангенциальным ускорением*:
$
accent(a_tau, arrow) = frac(upright(d)v, upright(d)t) accent(tau, arrow)
$

Итоговый вектор ускорения материальной точки складывается из векторов нормального и тангенциального ускорения:
#align(center)[
#let f1(x) = calc.sqrt(1 - calc.pow(x, 2))
#set text(size: 12pt)
#canvas({
  import draw: *
  import angle: *

  plot.plot(size: (6, 6),
  axis-style: none,
  y-min: -1, y-max: 1,
  {
    let domain = (-1, +1)
    plot.add(f1, domain: domain, style: (stroke: black))
  })

  line((3,6), (1.5, 6), mark: (end: ">", fill: black, scale: 0.5))
  content((1.6,6.2), $accent(tau, arrow)$)

  line((3,6), (0.75, 6), mark: (end: ">", fill: black, scale: 0.5))
  content((0.75,6.25), $accent(a_tau, arrow)$)

  line((3,6), (0, 6), mark: (end: ">", fill: black, scale: 0.5))
  content((0,6.2), $accent(v, arrow)$)

  line((3,6), (3,3), mark: (end: ">", fill: black, scale: 0.5))
  content((3.4,3), $accent(a_n, arrow)$)

  line((0.75, 6), (0.75, 3), stroke: (dash: "dashed"))
  line((0.75, 3), (3, 3), stroke: (dash: "dashed"))
  line((3,6), (0.75,3), mark: (end: ">", fill: black, scale: 0.5))
  content((0.6, 2.8), $accent(a, arrow)$)
})
]

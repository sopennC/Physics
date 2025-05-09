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
#set terms(hanging-indent: 0pt)
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

= Закон сохранения импульса

У нас есть замкнутая система и два тела в ней. В результате взаимодействия материальных точек их скорости меняются. Пусть $accent(v_1, arrow)$ и $accent(v_2, arrow)$ -- скорости материальных точек 1 и 2 соответственно, а $Delta accent(v_1, arrow)$ и $Delta accent(v_2, arrow)$ -- приращения этих скоростей за одинаковый промежуток времени $Delta t$.

Запишем следующее соотношение, учитывая, что скорости направленны в противоположные стороны:
$
m_1 Delta accent(v_1, arrow) = - m_2 Delta accent(v_2, arrow)
$<v>

Здесь $m_1$ и $m_2$ постоянны и имеют одинаковый знак.

/ Следствие #sym.numero 1: _Отношение масс двух материальных точек равно взятому с противоположным знаком отношению приращений скоростей этих точек в результате взаимодействия._

#v(1cm)

Поделим каждую часть уравнения @v на $Delta t$:
$
m_1 accent(a_(1#text[ср]), arrow) = -m_2 accent(a_(2#text[ср]), arrow)
$

После перехода к пределу ускорение станет мгновенным:
$
m_1 accent(a_1, arrow) = -m_2 accent(a_2, arrow)
$

#v(1cm)

Пусть $accent(v_1, arrow)$ и $accent(v_2, arrow)$ -- скорости тел до взаимодействия, а $accent(v'_1, arrow)$ и $accent(v'_2, arrow)$ -- после взаимодействия. Тогда $Delta accent(v_1, arrow) = accent(v'_1, arrow) - accent(v_1, arrow)$ и $Delta accent(v_2, arrow) = accent(v'_2, arrow) - accent(v_2, arrow)$. Подставим это в уравнение @v:
$
m_1 accent(v'_1, arrow) - m_1 accent(v_1, arrow) = m_2 accent(v', arrow)_2 + m_2 accent(v_2, arrow) \
m_1 accent(v_1, arrow) + m_2 accent(v_2, arrow) = m_1 accent(v', arrow)_1 + m_2 accent(v', arrow)_2
$<m>

*_Импульсом_* будем называть вектор, равный произведению массы точки на ее вектор скорости:
$
accent(p, arrow) = m accent(v, arrow)
$<p>

Запишем уравнение @m, учитывая новую переменную @p:
$
p_1 + p_2 = p'_1 + p'_2
$


/ Закон сохранения импульса: _Импульс замкнутой системы двух материальных точек остается постоянным во времени при любом взаимодействии между точками._

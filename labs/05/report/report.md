---
## Front matter
title: "Лабораторная работа №5"
subtitle: "Модель хищник-жертва"
author: "Аникин Константин Сергеевич"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Реализовать жёсткую модель Лотки-Вольтерры в Julia и OpenModelica.

# Задание

Вариант 6

Постройте график зависимости численности хищников от численности жертв, а также графики изменения численности хищников и численности жертв при следующих начальных условиях: x0=11, y0=16. Найдите стационарное состояние системы.

# Теоретическое введение

Простейшая модель взаимодействия двух видов типа «хищник — жертва» - модель Лотки-Вольтерры. Данная двувидовая модель основывается на следующих предположениях:

1. Численность популяции жертв x и хищников y зависят только от времени (модель не учитывает пространственное распределение популяции на занимаемой территории)

2. В отсутствии взаимодействия численность видов изменяется по модели Мальтуса, при этом число жертв увеличивается, а число хищников падает

3. Естественная смертность жертвы и естественная рождаемость хищника считаются несущественными

4. Эффект насыщения численности обеих популяций не учитывается

5. Скорость роста численности жертв уменьшается пропорционально численности хищников

Подробней о модели Лотки-Вольтерры см. в [@turchin:2020:physics]

# Выполнение лабораторной работы

На рис. @fig:1 представлен код программы на Julia. На рис. @fig:2 представлен график зависимости численности хищников от численности жертв, а на рис. @fig:3 представлены графики изменения численности хищников и жертв в зависимости от времени.

Точное стационарное состояние равно (10.88235294117647, 3.695652173913044), и с поправкой на реальность получаем (11, 4).

![Код программы на Julia](image/1.png){#fig:1}

![График зависимости на Julia](image/2.png){#fig:2}

![График изменения на Julia](image/3.png){#fig:3}

На рис. @fig:4 представлен код программы на OpenModelica. На рис. @fig:5 представлен график зависимости численности хищников от численности жертв, а на рис. @fig:6 представлены графики изменения численности хищников и жертв в зависимости от времени.

![Код программы на OpenModelica](image/4.png){#fig:4}

![График зависимости на OpenModelica](image/5.png){#fig:5}

![График изменения на OpenModelica](image/6.png){#fig:6}

# Выводы

В ходе работы была реализована жёсткая модель хищник-жертва и построены необходимые графики. 

# Список литературы{.unnumbered}

::: {#refs}
:::

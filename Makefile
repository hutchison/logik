all: zusammenfassung.pdf loesung1.pdf loesung2.pdf loesung4.pdf loesung5.pdf loesung8.pdf loesung9.pdf loesung10.pdf loesung11.pdf

loesung1.pdf: loesung1.latex
	latexmk -xelatex -use-make $<

loesung2.pdf: loesung2.latex
	latexmk -xelatex -use-make $<

loesung4.pdf: loesung4.latex
	latexmk -xelatex -use-make -pvc $<

loesung5.pdf: loesung5.latex
	latexmk -xelatex -use-make -pvc $<

loesung8.pdf: loesung8.latex
	latexmk -xelatex -use-make $<

loesung9.pdf: loesung9.latex
	latexmk -xelatex -use-make $<

loesung10.pdf: loesung10.latex
	latexmk -xelatex -use-make $<

loesung11.pdf: loesung11.latex
	latexmk -xelatex -use-make $<

zusammenfassung.pdf: zusammenfassung.latex
	latexmk -pdf -use-make $<

zusammenfassung.pdf-live: zusammenfassung.latex
	latexmk -pdf -use-make -pvc $<

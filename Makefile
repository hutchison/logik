all: zusammenfassung.pdf

zusammenfassung.pdf: zusammenfassung.latex
	latexmk -pdf -use-make $<

zusammenfassung.pdf-live: zusammenfassung.latex
	latexmk -pdf -use-make -pvc $<

all: zusammenfassung.pdf

zusammenfassung.pdf: zusammenfassung.latex
	latexmk -pdf -use-make -pvc $<

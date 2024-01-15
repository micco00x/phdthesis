TEX = pdflatex
BIB = bibtex

.PHONY: clean default all

all: thesis

thesis:
	$(TEX) thesis.tex
	$(BIB) thesis
	$(TEX) thesis.tex
	$(TEX) thesis.tex

clean:
	rm *.aux *.bbl *.blg *.log *.out *.toc thesis.pdf


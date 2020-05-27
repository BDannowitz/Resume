LATEX=pdflatex
OPTS=-interaction nonstopmode -halt-on-error -file-line-error
SRCS=$(wildcard *.tex)

.PHONY : all clean

all: $(SRCS:%.tex=%.pdf)

%.pdf: %.tex
	TEXINPUTS="./:./dependencies:$(TEXINPUTS)" $(LATEX) $(OPTS) $^
	rm -rf ./*.aux ./*.log ./*.out


clean:
	-rm -rf ./*.pdf ./*.aux ./*.log ./*.out

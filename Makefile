THEME = Warsaw
FONTSIZE = 8pt

MD = \
	bsd \
	modal-logic \
	pandoc \
	railsonlisp \
	test

TEX =

PDF = \
	bsd.pdf \
	pandoc.pdf \
	railsonlisp.pdf \
	test.pdf

all: pdf

clean:
	rm -f ${PDF}
	find . -name '*.aux' -or -name '*.log' -or -name '*.nav' -or -name '*.out' -or -name '*.snm' -or -name '*.toc' -or -name '*.vrb' -print0 | xargs -0 rm -f

%.pdf: %/index.md
	cd "${@:%.pdf=%}" && pandoc -st beamer -V theme:${THEME} -V fontsize:${FONTSIZE} -o ../$@ -f gfm index.md

pdf: ${PDF}

.PHONY: all clean pdf

%.tex.pdf: %/index.tex
	cd "${@:%.tex.pdf=%}" && pdflatex $< && pdflatex $<
	mv "${@:%.tex.pdf=%}/index.pdf" $@

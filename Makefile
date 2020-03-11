THEME = Warsaw

MD = \
	test.md

TEX = \
	railsonlisp.tex

all: pdf

.SUFFIXES: .md .pdf .tex

clean:
	rm -f ${PDF}

.md.pdf:
	mkdir -p "${.IMPSRC:%.md=%}"
	cd "${.IMPSRC:%.md=%}" && pandoc -st beamer -V theme:${THEME} -o ../$@ -f gfm ../${.IMPSRC}

.tex.pdf:
	mkdir -p "${.IMPSRC:%.tex=%}"
	cd "${.IMPSRC:%.tex=%}" && pdflatex ../${.IMPSRC} && pdflatex ../${.IMPSRC}
	mv "${.IMPSRC:%.tex=%}/${.IMPSRC:%.tex=%.pdf}" .

PDF = \
	${MD:%.md=%.pdf} \
	${TEX:%.tex=%.pdf}

pdf: ${PDF}

.PHONY: all clean pdf

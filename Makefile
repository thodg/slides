THEME = Warsaw
FONTSIZE = 8pt

MD = \
	bsd.md \
	pandoc.md \
	railsonlisp.md \
	test.md

all: pdf

.SUFFIXES: .md .pdf .tex

clean:
	rm -f ${PDF}
	find . -name '*.aux' -or -name '*.log' -or -name '*.nav' -or -name '*.out' -or -name '*.snm' -or -name '*.toc' -or -name '*.vrb' -print0 | xargs -0 rm -f

.md.pdf:
	mkdir -p "${.IMPSRC:%.md=%}"
	cd "${.IMPSRC:%.md=%}" && pandoc -st beamer -V theme:${THEME} -V fontsize:${FONTSIZE} -o ../$@ -f gfm ../${.IMPSRC}

PDF = \
	${MD:%.md=%.pdf} \
	${TEX:%.tex=%.pdf}

pdf: ${PDF}

.PHONY: all clean pdf

.tex.pdf:
	mkdir -p "${.IMPSRC:%.tex=%}"
	cd "${.IMPSRC:%.tex=%}" && pdflatex ../${.IMPSRC} && pdflatex ../${.IMPSRC}
	mv "${.IMPSRC:%.tex=%}/${.IMPSRC:%.tex=%.pdf}" .

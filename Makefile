MD = \
	test.md
THEME = Warsaw

all: pdf

.SUFFIXES: .md .pdf

clean:
	rm -f ${PDF}

.md.pdf:
	pandoc -st beamer -V theme:${THEME} ${.IMPSRC} -o $@

PDF = ${MD:%.md=%.pdf}
pdf: ${PDF}

.PHONY: all clean pdf

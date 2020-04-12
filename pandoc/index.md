Pandoc

Thomas de Grivel <thoxdg@gmail.com>

https://kmx.io/

2020-03-11

# Pandoc

## Introduction

### Pandoc

<https://pandoc.org>

Conversion between documentation formats

e.g.

`pandoc -st beamer -V theme:Warsaw -V fontsize:8pt -o test.pdf test.md`


### Supported formats (1/4)

Lightweight markup formats
 - Markdown (including CommonMark and GitHub-flavored Markdown)
 - reStructuredText
 - AsciiDoc
 - Emacs Org-Mode
 - Emacs Muse
 - Textile
 - txt2tags

HTML formats
 - (X)HTML 4
 - HTML5

Ebooks
 - EPUB version 2 or 3
 - FictionBook2

Documentation formats
 - GNU TexInfo
 - Haddock markup


### Supported formats (2/4)

Roff formats
 - roff man
 - roff ms

TeX formats
 - LaTeX
 - ConTeXt

XML formats
 - DocBook version 4 or 5
 - JATS
 - TEI Simple

Outline formats
 - OPML

Data formats
 - CSV tables


### Supported formats (3/4)

Word processor formats
 - Microsoft Word docx
 - OpenOffice/LibreOffice ODT
 - OpenDocument XML
 - Microsoft PowerPoint

Interactive notebook formats
 - Jupyter notebook (ipynb)

Page layout formats
 - InDesign ICML

Wiki markup formats
 - MediaWiki markup
 - DokuWiki markup
 - TikiWiki markup
 - TWiki markup
 - Vimwiki markup
 - XWiki markup
 - ZimWiki markup
 - Jira wiki markup


### Supported formats (4/4)

Slide show formats
 - LaTeX Beamer
 - Slidy
 - reveal.js
 - Slideous
 - S5
 - DZSlides

Custom formats
 - custom writers can be written in lua.

PDF
 - via pdflatex, xelatex, lualatex, pdfroff, wkhtml2pdf, prince, or weasyprint.

## Beamer presentation

### Standalone beamer presentation

`pandoc -st beamer -o test.pdf -f gfm test.md`

`-st beamer` : produce a standalone beamer document

`-o test.pdf` : output file

`-f gfm` : input format in Github flavoured Markdown syntax

`test.md` : input file

### Sample markdown for beamer

```
Pandoc

Thomas de Grivel <thoxdg@gmail.com>

https://kmx.io/

2020-03-11

# Pandoc

## Introduction

### Pandoc

<https://pandoc.org>

Conversion between documentation formats

### Supported formats (1/4)

Lightweight markup formats
 - Markdown
 - reStructuredText
```

### Latex output

`pandoc -st beamer -o test.tex -f gfm test.md`

Produces test.tex in LaTeX format.


### PDF output from LaTeX

`pdflatex test.tex; pdflatex test.tex`

Produces test.pdf from test.tex

### Conversion from LaTeX to Markdown

Convert LaTeX beamer slides to Markdown source format :

`pandoc -st gfm test.tex > test.md`

Warning : tweaking of generated Markdown files is needed.

SOURCES     = 00-header.md         \
              01-introduction.md   \
              02-motivation.md     \
              03-edition.md        \
              04-conclusion.md     \
              05-references.md
PDF_OBJECTS = article.pdf
BIBFILE     = article.bib
BIBSTYLE    = frontiers.csl
FORMAT      = markdown+simple_tables+table_captions+mmd_title_block+fenced_code_attributes

all: pdf

pdf: $(PDF_OBJECTS)

%.pdf: $(SOURCES) %.bib Makefile template.tex
	@printf "Processing $@ ... "
	@pandoc --smart --standalone --from $(FORMAT)       \
		--filter pandoc-fignos                      \
		--filter pandoc-eqnos                       \
		--filter pandoc-tablenos                    \
                --filter pandoc-citeproc                    \
                --variable geometry=a4paper                 \
                --variable fontsize=11pt                    \
	        --variable colorlinks=true                  \
                --variable urlcolor=blue                    \
                --variable citecolor=blue                   \
                --variable linkcolor=blue                   \
                --latex-engine=pdflatex                     \
                --template=template.tex                     \
                --csl=$(BIBSTYLE)                           \
                --bibliography=$(BIBFILE) -o $@ $(SOURCES)
	@printf "done.\n"

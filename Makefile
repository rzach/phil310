# phil310, based on OLP
# Makefile

# YOU DO NOT HAVE TO USE THIS MAKEFILE
# Just run pdflatex on whichever tex file you want to compile
# The job of this makefile is to compile *everything*
 
# Requires latexmk https://www.ctan.org/pkg/latexmk/
# The PDF of the open-logic-config documentation also requires
# pandoc http://pandoc.org/

.PHONY : FORCE_MAKE

ALLTEXFILES = phil310-ebook.tex phil310-letter.tex

ALLPDFFILES = $(ALLTEXFILES:.tex=.pdf)

all: $(ALLPDFFILES)

%.pdf : %.tex FORCE_MAKE
	latexmk -pdf -dvi- -ps- -cd $<

clean:	
	latexmk -c $(ALLTEXFILES)

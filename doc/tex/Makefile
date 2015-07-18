DOCUMENT = foip
OBJECT_DIR = ./obj

.PHONY: all clean

all: 
	for i in {1..5}; do \
		pdflatex $(DOCUMENT).tex; \
	done;
	mv $(DOCUMENT).pdf $(OBJECT_DIR)/.

clean:
	rm -f *.aux
	rm -f *.bbl
	rm -f *.blg
	rm -f *.log
	rm -f *.toc
	rm -f *.glg
	rm -f *.glo
	rm -f *.gls
	rm -f *.glsdefs
	rm -f *.out
	rm -f *.xdy

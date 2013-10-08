
.PHONY: all
DOCS := $(wildcard *.mkd)
all: $(DOCS:.mkd=.pdf)

%.pdf: %.mkd
	pandoc -o $@ $<

clean:
	rm -f *.html *.pdf *~

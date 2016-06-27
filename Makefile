SHELL := /bin/bash

texfile=poster

read:	pdf clean
	evince ${texfile}.pdf &
	
pdf:	${texfile}.tex
	pdflatex --shell-escape ${texfile}.tex

clean:
	rm -f ${texfile}.{log,aux}

cleanall:	clean
	rm -f ${texfile}.pdf

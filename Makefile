NAME := git_reference

${NAME}.pdf:${NAME}.tex
	xelatex $<
	xelatex $<
	evince ${NAME}.pdf

clean:
	rm -f *.aux *.log *.synctex *.aux *.tex.bak *.toc *.out
	rm *synctex.gz
really-clean: clean
	rm -f *.pdf

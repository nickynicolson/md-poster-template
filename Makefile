col_closer="\end{column}\end{columns}"

build/poster-content.tex: poster-content.md refs.bib
	mkdir -p build
	pandoc --citeproc --bibliography=refs.bib -f markdown+raw_attribute $< -o build/poster-content-temp.tex
	# pandoc --biblatex --bibliography=refs.bib -f markdown+raw_attribute $< -o build/poster-content-temp.tex
	# cat build/poster-content-temp.tex col-closer.tex > $@
	mv build/poster-content-temp.tex $@
	echo $(col_closer) >> $@
	

content: build/poster-content.tex

build/poster.pdf: poster.tex build/poster-content.tex 
	mkdir -p build
	cp poster*.tex *.sty *.png build
	latexmk -f -lualatex -interaction=batchmode -pdf -use-make -cd build/poster

poster: build/poster.pdf

clean:
	rm -rf build
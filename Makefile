refs=refs.bib

build/poster-content.tex: poster-content.md poster-metadata.tex ${refs}
	mkdir -p build
	# Note that pandoc output is written to a temporary file as we need to 
	# add in a tex snippet to close columns
	pandoc --citeproc --bibliography=${refs} -f markdown+raw_attribute $< -o build/poster-content-temp.tex
	# Add tex snippet to close column commands
	cat build/poster-content-temp.tex col_closer.tex > $@
	
content: build/poster-content.tex

build/poster.pdf: poster.tex build/poster-content.tex 
	mkdir -p build
	cp poster*.tex *.sty *.png build
	latexmk -f -lualatex -interaction=batchmode -pdf -use-make -cd build/poster

poster: build/poster.pdf

clean:
	rm -rf build

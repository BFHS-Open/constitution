.PHONY: format build clean rebuild open

format:
	@echo -e "Formatting latex...\n"
# Intentionally ignoring ./constitution.tex as the formatter does weird stuff there :(
	npx prettier -w ./articles/*

build:
	@echo -e "Building pdf...\n"
	mkdir out
	latexmk -output-directory=./out -pdf ./constitution.tex -shell-escape
	@echo -e "\nNow just open ./out/constitution.pdf in your favorite pdf viewer!\n"

clean:
	@echo -e "Deleting directories...\n"
	-rm ./out/constitution.aux
	-rm ./out/constitution.fdb_latexmk
	-rm ./out/constitution.fls
	-rm ./out/constitution.log
	-rm ./out/constitution.out
	-rm ./out/constitution.pdf
	-rm ./out/constitution.toc
	-rmdir ./out

rebuild:
	make clean
	make build

open:
	make rebuild
	-xdg-open ./out/constitution.pdf
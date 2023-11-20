.PHONY: format build clean rebuild open
TEX := latexmk
CONSTITUTION := ./constitution.tex

format:
	@echo -e "Formatting latex...\n"
	npx prettier -w ./articles/*

build:
	@echo -e "Building pdf...\n"
	mkdir out
	$(TEX) -output-directory=./out -pdf $(CONSTITUTION) -shell-escape -silent
	@echo -e "PDF written to ./out/constitution.pdf\n"

clean:
	@echo -e "Deleting output files...\n"
	$(TEX) -CA -output-directory=./out -silent
	@echo -e "Deleting output directory...\n"
	-rmdir ./out

rebuild:
	make clean
	make build

open:
	make rebuild
	-xdg-open ./out/constitution.pdf
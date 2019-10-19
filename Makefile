.PHONY: echo

echo:
	@echo "make pdf|html|install|start|clean"

build: pdf html

pdf:
	resume export assets/resume.pdf --theme Stackoverflow

html:
	resume export assets/resume.html --theme Stackoverflow

install:
	npm install

start:
	node driver.js

clean:
	rm *.html *.pdf /dev/null

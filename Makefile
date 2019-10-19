.PHONY: echo

echo:
	@echo "make pdf|html|install|start|clean"

pdf:
	resume export assets/resume.pdf --theme Stackoverflow

html:
	resume export assets/resume.html --theme Stackoverflow

install:
	npm install

start:
	node app.js

clean:
	rm *.html *.pdf /dev/null

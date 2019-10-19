RESUME_CLI=node node_modules/resume-cli
DIR=assets

.PHONY: echo

echo:
	@echo "make pdf|html|install|start|clean"

build: pdf html

pdf:
	$(RESUME_CLI) export resume.pdf --dir=$(DIR) --theme=Stackoverflow

html:
	$(RESUME_CLI) export resume.html --dir=$(DIR) --theme=Stackoverflow

install:
	npm install

start:
	node driver.js

clean:
	rm *.html *.pdf 2> /dev/null || echo > /dev/null

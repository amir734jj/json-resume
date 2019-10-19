RESUME_CLI=node node_modules/resume-cli
DIR=assets
DRIVER=driver.js
OUTPUT=resume

.PHONY: echo

echo:
	@echo "make pdf|html|install|start|clean"

build: pdf html

pdf:
	$(RESUME_CLI) export $(DIR)/$(OUTPUT).pdf	--theme=stackoverflow

html:
	$(RESUME_CLI) export $(DIR)/$(OUTPUT).html	--theme=stackoverflow

install:
	npm install

start:
	node driver.js

clean:
	rm *.html *.pdf $(DIR)/*.html $(DIR)/*.pdf 2> /dev/null || echo > /dev/null

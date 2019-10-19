pdf:
	resume export resume.pdf --theme Stackoverflow

html:
	resume export resume.html --theme Stackoverflow

install:
	npm install resume-cli jsonresume-theme-stackoverflow

clean:
	rm *.html *.pdf /dev/null

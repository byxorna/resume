.PHONY: build clean resume.pdf

resume.pdf: resume.md
	pandoc resume.md -o resume.pdf --pdf-engine=typst \
		-M mainfont:'Helvetica Neue' \
		-V margin-top=0.75in \
		-V margin-bottom=0.75in \
		-V margin-left=0.75in \
		-V margin-right=0.75in

build: resume.pdf

clean:
	rm -f resume.pdf

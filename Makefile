.PHONY: build

deps:
	yarn install

.PHONY: resume.pdf
resume.pdf: deps
	./scripts/render_pdf.sh

build: resume.pdf

# Resume

This is a living copy of my resume. To see it live, go to http://pipefail.com/resume

## Build

Requires [pandoc](https://pandoc.org/) and [typst](https://typst.app/):

```
# macos: $ brew install pandoc typst
# linux: apt install pandoc cargo && cargo install --locked typst-cli
$ make build
$ open resume.pdf
```

## Use

```
$ go get github.com/byxorna/resume
```

[Go Documentation](https://pkg.go.dev/github.com/byxorna/resume#section-documentation)

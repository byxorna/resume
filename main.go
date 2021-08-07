package resume

import (
	_ "embed"
)

var (
	//go:embed resume.md
	ResumeMarkdown string
	//go:embed resume.pdf
	ResumePDF []byte
)

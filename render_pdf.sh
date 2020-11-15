#!/bin/bash
set -e
if [[ ! -x node_modules/.bin/mdpdf ]] ; then
  yarn install
fi

commit="$(git rev-parse --short=7 HEAD)"
tag="$(git describe --tags --always)"

header="$(mktemp)"
footer="$(mktemp)"
style="$(mktemp)"
cat >$footer <<_EOF_
<div style="font-size: 8px; text-align: right;float:right;width:100%;margin-right:8px;">
  <span><a href="https://github.com/byxorna/resume/commit/$commit">byorna/resume@$tag</a> (<a href="https://github.com/byxorna/resume/commit/$commit">$commit</a>) $(date -u)</span>
</div>
_EOF_

node_modules/.bin/mdpdf resume.md resume.pdf --header $header --footer $footer --h-height 11 --gh-style --style $style
#open resume.pdf

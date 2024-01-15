#!/bin/bash

# debug
# set -x

info() {
	local content="$*"
	printf "[ci-template.nvim] - %s\n" "$content"
}

err() {
	local content="$*"
	info "error! $content"
}

ORG="$1"
REPO="$2"

if [[ -z "$ORG" ]]; then
	err "missing 'ORG' parameter, exit..."
fi
if [[ -z "$REPO" ]]; then
	err "missing 'REPO' parameter, exit..."
fi

info "remove CHANGELOG.md"
rm CHANGELOG.md
info "remove CHANGELOG.md - done"

info "replace linrongbin16/ci-template.nvim to $ORG/$REPO in README.md"
sed -i "s/linrongbin16/$ORG/g" README.md
sed -i "s/ci-template.nvim/$REPO/g" README.md
info "replace linrongbin16/ci-template.nvim to $ORG/$REPO in README.md - done"

info "replace linrongbin16/ci-template.nvim to $ORG/$REPO in LICENSE"
sed -i "s/linrongbin16/$ORG/g" README.md
sed -i "s/ci-template.nvim/$REPO/g" README.md
info "replace linrongbin16/ci-template.nvim to $ORG/$REPO in LICENSE - done"

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

info "replace 'linrongbin16' to '$ORG' in README.md"
sed -i "s/linrongbin16/$ORG/g" README.md
info "replace 'linrongbin16' to '$ORG' in README.md - done"

info "replace 'ci-template.nvim' to '$REPO' in README.md"
sed -i "s/ci-template.nvim/$REPO/g" README.md
info "replace 'ci-template.nvim' to '$REPO' in README.md - done"

info "replace 'linrongbin16' to '$ORG' in .github/workflows"
sed -i "s/linrongbin16/$ORG/g" .github/workflows/lint.yml
sed -i "s/linrongbin16/$ORG/g" .github/workflows/release.yml
sed -i "s/linrongbin16/$ORG/g" .github/workflows/test.yml
info "replace 'linrongbin16' to '$ORG' in .github/workflows - done"

info "replace 'ci-template.nvim' to '$REPO' in .github/workflows"
sed -i "s/ci-template.nvim/$REPO/g" .github/workflows/lint.yml
sed -i "s/ci-template.nvim/$REPO/g" .github/workflows/release.yml
sed -i "s/ci-template.nvim/$REPO/g" .github/workflows/test.yml
info "replace 'ci-template.nvim' to '$REPO' in .github/workflows - done"

info "replace 'linrongbin16' to '$ORG' in .luacov"
sed -i "s/linrongbin16/$ORG/g" .luacov
info "replace 'linrongbin16' to '$ORG' in .luacov - done"

info "replace 'ci-template' to '$ORG' in .luacov"
sed -i "s/ci-template/$REPO/g" .luacov
info "replace 'ci-template' to '$ORG' in .luacov - done"

info "rename lua/ci-template.lua to lua/$REPO"
mv lua/ci-template.lua lua/$REPO.lua
info "rename lua/ci-template.lua to lua/$REPO - done"

info "replace 'ci-template' to '$REPO' in .luacov"
sed -i "s/ci-template/$REPO/g" spec/ci_template_spec.lua
info "replace 'ci-template' to '$REPO' in .luacov - done"

REPO_SPEC="spec/${REPO}_spec.lua"
REPO_SPEC="${REPO_SPEC/-/_}"
info "rename lua/ci_template_spec.lua to '$REPO_SPEC'"
mv spec/ci_template_spec.lua $REPO_SPEC
info "rename lua/ci_template_spec.lua to '$REPO_SPEC' - done"

info "clear version.txt"
echo '' >version.txt
info "clear version.txt - done"

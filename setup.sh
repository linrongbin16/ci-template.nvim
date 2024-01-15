#!/bin/bash

# debug
set -x

info() {
	local content="$*"
	printf "[ci-template.nvim] - %s\n" "$content"
}

err() {
	local content="$*"
	info "error! $content"
}

ORG="$1"
REPO_NVIM="$2"
INDENT="$3"

if [[ -z "$ORG" ]]; then
	err "missing 'ORG' parameter, exit..."
	exit 1
fi
if [[ -z "$REPO_NVIM" ]]; then
	err "missing 'REPO_NVIM' parameter, exit..."
	exit 1
fi

REPO="${REPO_NVIM/.nvim/}"

info "remove CHANGELOG.md"
rm CHANGELOG.md
info "remove CHANGELOG.md - done"

info "clear README.md"
echo "# $REPO_NVIM" >README.md
info "clear README.md - done"

info "replace 'linrongbin16' to '$ORG' in LICENSE"
sed -i -e "s#linrongbin16#$ORG#g" LICENSE
info "replace 'linrongbin16' to '$ORG' in LICENSE - done"

info "replace 'ci-template.nvim' to '$REPO_NVIM' in LICENSE"
sed -i -e "s#ci-template.nvim#$REPO_NVIM#g" LICENSE
info "replace 'ci-template.nvim' to '$REPO_NVIM' in LICENSE - done"

info "replace 'linrongbin16' to '$ORG' in .github/workflows"
sed -i -e "s#linrongbin16#$ORG#g" .github/workflows/lint.yml
sed -i -e "s#linrongbin16#$ORG#g" .github/workflows/release.yml
sed -i -e "s#linrongbin16#$ORG#g" .github/workflows/test.yml
info "replace 'linrongbin16' to '$ORG' in .github/workflows - done"

info "replace 'ci-template.nvim' to '$REPO_NVIM' in .github/workflows"
sed -i -e "s#ci-template.nvim#$REPO_NVIM#g" .github/workflows/lint.yml
sed -i -e "s#ci-template.nvim#$REPO_NVIM#g" .github/workflows/release.yml
sed -i -e "s#ci-template.nvim#$REPO_NVIM#g" .github/workflows/test.yml
info "replace 'ci-template.nvim' to '$REPO_NVIM' in .github/workflows - done"

info "replace 'linrongbin16' to '$ORG' in .luacov"
sed -i -e "s#linrongbin16#$ORG#g" .luacov
info "replace 'linrongbin16' to '$ORG' in .luacov - done"

info "replace 'ci-template' to '$REPO' in .luacov"
sed -i -e "s#ci-template#$REPO#g" .luacov
info "replace 'ci-template' to '$REPO' in .luacov - done"

info "rename lua/ci-template.lua to lua/$REPO"
mv lua/ci-template.lua lua/$REPO.lua
info "rename lua/ci-template.lua to lua/$REPO - done"

info "replace 'ci-template' to '$REPO' in .luacov"
sed -i -e "s#ci-template#$REPO#g" spec/ci_template_spec.lua
info "replace 'ci-template' to '$REPO' in .luacov - done"

REPO_UNDERSCORE="${REPO/-/_}"
info "replace 'ci_template' to '$REPO_UNDERSCORE' in spec/ci_template_spec.lua"
sed -i "s#ci_template#$REPO_UNDERSCORE#g" spec/ci_template_spec.lua
info "replace 'ci_template' to '$REPO_UNDERSCORE' in spec/ci_template_spec.lua - done"

REPO_SPEC="spec/${REPO_UNDERSCORE}_spec.lua"
info "rename lua/ci_template_spec.lua to '$REPO_SPEC'"
mv spec/ci_template_spec.lua $REPO_SPEC
info "rename lua/ci_template_spec.lua to '$REPO_SPEC' - done"

info "clear version.txt"
echo '' >version.txt
info "clear version.txt - done"

if [[ -z "$INDENT" ]]; then
	exit 0
fi

info "replace indent size to '$INDENT'"
sed -i -e "#^indent_size# s#2#$INDENT#g" .editorconfig
sed -i -e "#^indent_width# s#2#$INDENT#g" .stylua.toml
sed -i -e "s#2#$INDENT#g" .nvim.lua
info "replace indent size to '$INDENT' - done"

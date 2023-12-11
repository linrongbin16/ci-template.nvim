# ci-template.nvim

<p align="center">
<a href="https://github.com/neovim/neovim/releases/v0.7.0"><img alt="Neovim" src="https://img.shields.io/badge/Neovim-v0.7.0+-57A143?logo=neovim&logoColor=57A143" /></a>
<a href="https://luarocks.org/modules/linrongbin16/linrongbin16-ci-template.nvim"><img alt="luarocks" src="https://custom-icon-badges.demolab.com/luarocks/v/linrongbin16/linrongbin16-ci-template.nvim?label=LuaRocks&labelColor=063B70&logo=tag&logoColor=fff&color=008B8B" /></a>
<a href="https://github.com/linrongbin16/ci-template.nvim/actions/workflows/ci.yml"><img alt="ci.yml" src="https://img.shields.io/github/actions/workflow/status/linrongbin16/ci-template.nvim/ci.yml?label=GitHub%20CI&labelColor=181717&logo=github&logoColor=fff" /></a>
<a href="https://app.codecov.io/github/linrongbin16/ci-template.nvim"><img alt="codecov" src="https://img.shields.io/codecov/c/github/linrongbin16/ci-template.nvim?logo=codecov&logoColor=F01F7A&label=Codecov" /></a>
</p>

<p align="center"><i>
CI template for Neovim plugin project.
</i></p>

## Requirements

- [CodeCov](https://about.codecov.io/) token: upload CodeCov report.
- [LuaRocks](https://luarocks.org/) API token: upload LuaRocks package.

## GitHub Actions

It does the following actions:

For PR branch:

1. conventional PR commits check
2. luacheck
3. luals annotations typecheck
4. stylua code format
5. download and install json.lua as an embed json library (for low-version Neovim).
6. run vusted (busted) unit tests

Additionally for main branch:

1. release-please
2. upload luarocks package

<!-- markdownlint-disable MD001 MD013 MD034 MD033 MD051 -->

# ci-template.nvim

<p align="center">
<a href="https://github.com/neovim/neovim/releases/v0.7.0"><img alt="Neovim" src="https://img.shields.io/badge/Neovim-v0.7+-57A143?logo=neovim&logoColor=57A143" /></a>
<a href="https://luarocks.org/modules/linrongbin16/ci-template.nvim"><img alt="luarocks" src="https://custom-icon-badges.demolab.com/luarocks/v/linrongbin16/ci-template.nvim?label=LuaRocks&labelColor=063B70&logo=tag&logoColor=fff&color=blue" /></a>
<a href="https://github.com/linrongbin16/ci-template.nvim/actions/workflows/test.yml"><img alt="test.yml" src="https://img.shields.io/github/actions/workflow/status/linrongbin16/ci-template.nvim/test.yml?label=GitHub%20CI&labelColor=181717&logo=github&logoColor=fff" /></a>
<a href="https://app.codecov.io/github/linrongbin16/ci-template.nvim"><img alt="codecov" src="https://img.shields.io/codecov/c/github/linrongbin16/ci-template.nvim?logo=codecov&logoColor=F01F7A&label=Codecov" /></a>
</p>

<p align="center"><i>
CI template for Neovim plugin project.
</i></p>

## Table of Contents

- [Requirements](#requirements)
- [Actions](#actions)
- [Usage](#usage)
  - [Initialize](#initialize)
  - [Development](#development)

## Requirements

- [CodeCov](https://about.codecov.io/) token: upload CodeCov report.
- [LuaRocks](https://luarocks.org/) API token: upload LuaRocks rocks.

## Actions

For PR branch:

1. [Conventional commits check](https://github.com/linrongbin16/ci-template.nvim/blob/d7054ed195ca72ca138f6f6e1f5656677110bc16/.github/workflows/lint.yml?plain=1#L15).
2. [Luacheck](https://github.com/linrongbin16/ci-template.nvim/blob/d7054ed195ca72ca138f6f6e1f5656677110bc16/.github/workflows/lint.yml?plain=1#L24).
3. [Type check](https://github.com/linrongbin16/ci-template.nvim/blob/d7054ed195ca72ca138f6f6e1f5656677110bc16/.github/workflows/lint.yml?plain=1#L29) by lua-language-server annotations.
4. [Code format](https://github.com/linrongbin16/ci-template.nvim/blob/d7054ed195ca72ca138f6f6e1f5656677110bc16/.github/workflows/lint.yml?plain=1#L38) by stylua.
5. [Run unit tests](https://github.com/linrongbin16/ci-template.nvim/blob/1520f234f2a9b78509b8fe13d684d29c7a0174e8/.github/workflows/test.yml?plain=1#L15) for both [Windows](https://github.com/linrongbin16/ci-template.nvim/blob/1520f234f2a9b78509b8fe13d684d29c7a0174e8/.github/workflows/test.yml?plain=1#L15) and [Unix/Linux](https://github.com/linrongbin16/ci-template.nvim/blob/1520f234f2a9b78509b8fe13d684d29c7a0174e8/.github/workflows/test.yml?plain=1#L34), for multiple Neovim versions from [lowest to nightly](https://github.com/linrongbin16/ci-template.nvim/blob/1520f234f2a9b78509b8fe13d684d29c7a0174e8/.github/workflows/test.yml?plain=1#L38).
6. [Upload code coverage](https://github.com/linrongbin16/ci-template.nvim/blob/93a666c874a440e6835a74f3d22931e8e70a9719/.github/workflows/coverage.yml?plain=1#L15).

Additionally for main/master branch:

1. [Auto release](https://github.com/linrongbin16/ci-template.nvim/blob/1520f234f2a9b78509b8fe13d684d29c7a0174e8/.github/workflows/release.yml?plain=1#L20).
2. [Create tag](https://github.com/linrongbin16/ci-template.nvim/blob/1520f234f2a9b78509b8fe13d684d29c7a0174e8/.github/workflows/release.yml?plain=1#L26).
3. [Upload LuaRocks rocks](https://github.com/linrongbin16/ci-template.nvim/blob/1520f234f2a9b78509b8fe13d684d29c7a0174e8/.github/workflows/release.yml?plain=1#L33).

## Usage

### Initialize

1. Click the **_"Use this template"_** button (in the top right) to create new Neovim plugin project.
2. Clone the repository to local.
3. Run `./setup.py` with below arguments:
   - `--org`: organization.
   - `--repo`: repository.
   - (Optional) `--indent-size`: indent size, by default is `2`.
   - (Optional) `--required-version`: minimal required nvim version, by default is `0.7`.

> [!NOTE]
>
> The `setup.py` script is actually doing below steps:
>
> 1. Reset below files:
>    - `README.md`.
>    - `CHANGELOG.md`.
>    - `version.txt`.
> 2. Update below files with provided `{ORG}`, `{REPO}` (and optional `{REQUIRED_VERSION}`):
>    - `LICENSE`.
>    - `.luacov`.
>    - Action files in `github/workflows`.
> 3. Rename below files:
>    - `lua/ci-template.lua` to `lua/{REPO}.lua` (`.nvim` suffix is been removed if exists).
>    - `spec/ci_template_spec.lua` to `spec/{REPO}_spec.lua` (`.nvim` suffix is been removed if exists).
> 4. (Optional) reset the indent size with `{INDENT_SIZE}` in below files:
>    - `.editorconfig`.
>    - `.stylua.toml`.
>    - `.nvim.lua`.

### Development

Setup development environment with:

- [lua-language-server](https://github.com/LuaLS/lua-language-server): for lua programming.
- [stylua](https://github.com/JohnnyMorganz/StyLua): code format.
- [luacheck](https://github.com/lunarmodules/luacheck): code static check.
- [luarocks](https://luarocks.org/): for vusted/busted/luacov installation.

Setup unit test with:

- [vusted](https://github.com/notomo/vusted).

Then run test cases with `vusted ./spec`.

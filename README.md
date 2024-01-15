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

Additionally for main branch:

1. [Release](https://github.com/linrongbin16/ci-template.nvim/blob/1520f234f2a9b78509b8fe13d684d29c7a0174e8/.github/workflows/release.yml?plain=1#L20) on main/master branch push.
2. [Create tag](https://github.com/linrongbin16/ci-template.nvim/blob/1520f234f2a9b78509b8fe13d684d29c7a0174e8/.github/workflows/release.yml?plain=1#L26).
3. [Upload LuaRocks rocks](https://github.com/linrongbin16/ci-template.nvim/blob/1520f234f2a9b78509b8fe13d684d29c7a0174e8/.github/workflows/release.yml?plain=1#L33).

## Usage

### Initialize

1. Click the **_Use this template_** button (in the top right) to create new Neovim plugin project.
2. Clone the repository to local.
3. Run `./setup.py` with below arguments:
   - `${ORG}`: organization.
   - `${REPO}`: repository.
   - (Optional) `${INDENT}`: indent size, by default is `2`.

> [!NOTE]
>
> The `setup.py` script is actually doing below steps:
>
> 1. Remove the [CHANGELOG.md](https://github.com/linrongbin16/ci-template.nvim/blob/8ba994d7a64c52bb3a4a046068a510f54219aacd/CHANGELOG.md?plain=1#L1) (it's only for **_this_** project, you don't want it).
> 2. Replace the `linrongbin16` and `ci-template` (and `ci-template.nvim`) to provided `${ORG}` and `${REPO}` in below files:
>    - `LICENSE`.
>    - `github/workflows`:
>      - `lint.yml`.
>      - `release.yml`.
>      - `test.yml`.
>    - `.luacov`.
> 3. Rename below files:
>    - `lua/ci-template.lua` to `lua/${REPO}.lua` (`.nvim` suffix is been removed if exists).
>    - `spec/ci_template_spec.lua` to `spec/${REPO}_spec.lua` (`.nvim` suffix is been removed if exists).
> 4. Reset below files:
>    - `README.md`.
>    - `CHANGELOG.md`.
>    - `version.txt`.
> 5. (Optional) reset the indent size (only when `${INDENT}` is been provided) in below files:
>    - `.editorconfig`.
>    - `.stylua.toml`.
>    - `.nvim.lua`.

### Development

Setup the plugin development with:

- [lua-language-server](https://github.com/LuaLS/lua-language-server): for lua programming.
- [stylua](https://github.com/JohnnyMorganz/StyLua): code format.
- [luacheck](https://github.com/lunarmodules/luacheck): code static check.
- [luarocks](https://luarocks.org/): for vusted/busted/luacov installation.
- [vusted](https://github.com/notomo/vusted): unit test.

# ci-template.nvim

<p align="center">
<a href="https://github.com/neovim/neovim/releases/v0.7.0"><img alt="Neovim" src="https://img.shields.io/badge/Neovim-v0.7+-57A143?logo=neovim&logoColor=57A143" /></a>
<a href="https://luarocks.org/modules/linrongbin16/linrongbin16-ci-template.nvim"><img alt="luarocks" src="https://custom-icon-badges.demolab.com/luarocks/v/linrongbin16/linrongbin16-ci-template.nvim?label=LuaRocks&labelColor=063B70&logo=tag&logoColor=fff&color=blue" /></a>
<a href="https://github.com/linrongbin16/ci-template.nvim/actions/workflows/ci.yml"><img alt="ci.yml" src="https://img.shields.io/github/actions/workflow/status/linrongbin16/ci-template.nvim/ci.yml?label=GitHub%20CI&labelColor=181717&logo=github&logoColor=fff" /></a>
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
2. Remove the [CHANGELOG.md](https://github.com/linrongbin16/ci-template.nvim/blob/8ba994d7a64c52bb3a4a046068a510f54219aacd/CHANGELOG.md?plain=1#L1) (it's only for **_this_** project, you don't want it).
3. Replace the word `linrongbin16`:
   - `README.md`: [badges](https://github.com/linrongbin16/ci-template.nvim/blob/9313f7927b133abe342ee4fa1758fb438c6a9c57/README.md?plain=1#L4-L7).
   - `LICENSE`: [user name](https://github.com/linrongbin16/ci-template.nvim/blob/9313f7927b133abe342ee4fa1758fb438c6a9c57/LICENSE?plain=1#L3).
   - `ci.yml`: [luarocks package](https://github.com/linrongbin16/ci-template.nvim/blob/d4a39cecc5384884d2c1d9d205d3503ab266ec21/.github/workflows/ci.yml?plain=1#L122).
4. Replace the word `ci-template`:
   - `ci.yml`: [luarocks package](https://github.com/linrongbin16/ci-template.nvim/blob/d4a39cecc5384884d2c1d9d205d3503ab266ec21/.github/workflows/ci.yml?plain=1#L122), [package name](https://github.com/linrongbin16/ci-template.nvim/blob/9210da5ee798a140ed6fe126bcc3a367c8b1f996/.github/workflows/ci.yml#L106).
   - `.luacov`: [lua modules](https://github.com/linrongbin16/ci-template.nvim/blob/792fcc25184f0ac3f20c2037ed6a4ae48f4c28d3/.luacov?plain=1#L2-L3).
5. Rename the files:
   - [ci-template.lua](https://github.com/linrongbin16/ci-template.nvim/blob/203b21999ccd1e43a7e3d5d26e690ff75aeee403/lua/ci-template.lua).
   - [ci_template_spec.lua](https://github.com/linrongbin16/ci-template.nvim/blob/203b21999ccd1e43a7e3d5d26e690ff75aeee403/test/ci_template_spec.lua).
6. Reset the version:
   - `version.txt`: [version number](https://github.com/linrongbin16/ci-template.nvim/blob/792fcc25184f0ac3f20c2037ed6a4ae48f4c28d3/version.txt?plain=1#L1).
7. Reset the indent size (by default 2):
   - `.editorconfig`: [indent_size](https://github.com/linrongbin16/ci-template.nvim/blob/7de9e40f84d53d9d07d3206e4979347a942cbd30/.editorconfig?plain=1#L7).
   - `.stylua.toml`: [indent_size](https://github.com/linrongbin16/ci-template.nvim/blob/792fcc25184f0ac3f20c2037ed6a4ae48f4c28d3/.stylua.toml?plain=1#L4).
   - `.nvim.lua` (optional if you enabled `exrc`): [shiftwidth](https://github.com/linrongbin16/ci-template.nvim/blob/b752ecd228a2a3307123315f22bee97bf8760544/.nvim.lua?plain=1#L1-L3).

### Development

Setup the plugin development with:

- [lua-language-server](https://github.com/LuaLS/lua-language-server): for lua programming.
- [stylua](https://github.com/JohnnyMorganz/StyLua): code format.
- [luacheck](https://github.com/lunarmodules/luacheck): code static check.
- [luarocks](https://luarocks.org/): for vusted/busted/luacov installation.
- [vusted](https://github.com/notomo/vusted): unit test.

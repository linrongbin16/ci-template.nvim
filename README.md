# ci-template.nvim

CI template for Neovim plugin project.

It does following actions:

For PR branch:

1. conventional PR commits check
2. luacheck
3. luals annotations typecheck
4. stylua code format
5. download and install json.lua
6. run vusted (busted) unit tests

Additionally for main branch:

1. please-release
2. upload luarocks package

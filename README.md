# neovim
My neovim configuration used on MacOS and Linux

## Requirements
- [Neovim nightly](https://github.com/neovim/neovim/releases) build
- [Vim-plug](https://github.com/junegunn/vim-plug) installed
- [Ripgrep](https://github.com/BurntSushi/ripgrep#installation) installed
- [Patched font](https://github.com/ryanoasis/nerd-fonts) installed and in use
- [Node](https://nodejs.org/en/) installed (with npm)
- [Go](https://go.dev/) installed and setup (OPTIONAL)

## LSP
To make language servers work, one should install language servers one wished to use. This configuration uses language servers:
- [gopls](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#gopls)
- [golangci_lint_ls](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#golangci_lint_ls)
- [angularls](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#angularls)
- [cssls](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#cssls)
- [html](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#html)
- [tsserver](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#tsserver)
- [bashls](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#bashls)
- [vimls](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#vimls)

These are taken into use in the file `lsp/lsp.lua`:
```
local servers = {'gopls', 'golangci_lint_ls', 'angularls', 'cssls', 'html', 'tsserver', 'bashls', 'vimls' }
```
There are two scripts that take care of the language server installation:
- `lsp_install_npm.sh` --> installs all language servers used that are installed using npm
- `lsp_install_go.sh` --> installs all language servers used that are installed using go (go language servers)

If you don't want to use for example the Go language servers, just don't install them, but remember to remove the go servers from the servers list mentioned above (`gopls` and `golangci_lint_ls`).

>For go language servers: make sure `$GOPATH/bin is in your $PATH`

## Installation
Drop the contents of this repo to ~/.config/nvim

Run `lsp_install_npm.sh` (sudo because npm is ran with `-g` flag) to install all language servers installed via npm.

Run `lsp_install_go.sh` to install go language servers (Go required)

Open neovim and run `:PlugInstall`

You should be good to go!

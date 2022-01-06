" ********************
" * Vim source files *
" ********************
" Plugins
source ~/.config/nvim/vim-plug/plugins.vim
" Mappings
source ~/.config/nvim/keys/mappings.vim
" General settings
source ~/.config/nvim/general/settings.vim
" Luatree
source ~/.config/nvim/luatree/luatree.vim
" Nerdcommenter
source ~/.config/nvim/nerdcommenter/nerdcommenter.vim
" Telescope
source ~/.config/nvim/telescope/telescope.vim

" *******************
" * Lua source files *
" *******************
" For LSP and CMP correct setup see the lua files below. There are some
" instructions written inside the files
" LSP
luafile ~/.config/nvim/lsp/lsp.lua
" CMP configuration
luafile ~/.config/nvim/cmp/cmp.lua
" Treesitter
luafile ~/.config/nvim/treesitter/treesitter.lua
" Luatree
source ~/.config/nvim/luatree/luatree.lua
" FTerm
source ~/.config/nvim/FTerm/fterm.lua
" Telescope
source ~/.config/nvim/telescope/telescope.lua
" Lualine
source ~/.config/nvim/lualine/lualine.lua

" *********
" * Other *
" *********
colorscheme catppuccin

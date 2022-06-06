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
" Trouble
source ~/.config/nvim/trouble/trouble.vim

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
luafile ~/.config/nvim/luatree/luatree.lua
" FTerm
luafile ~/.config/nvim/FTerm/fterm.lua
" Telescope
luafile ~/.config/nvim/telescope/telescope.lua
" Lualine
luafile ~/.config/nvim/lualine/lualine.lua
" Trouble
luafile ~/.config/nvim/trouble/trouble.lua
" Transparent
" source ~/.config/nvim/transparent/transparent.lua
" *********
" * Other *
" *********
colorscheme catppuccin

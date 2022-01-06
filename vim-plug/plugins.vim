call plug#begin('~/.vim/plugged')
" Colorscheme
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
" LSP config
Plug 'neovim/nvim-lspconfig'
" CMP for autocompletion + completion sources
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'ray-x/cmp-treesitter'
" Vsnip for CMP (required for autocompletion with LSP)
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Luatree
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
" Floating terminal
Plug 'numToStr/FTerm.nvim'
" Nerd commenter (easy commenting)
Plug 'preservim/nerdcommenter'
" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
" Git blame
Plug 'f-person/git-blame.nvim'

call plug#end()

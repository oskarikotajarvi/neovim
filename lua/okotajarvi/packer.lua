vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- Colorscheme
    use { 'lalitmee/cobalt2.nvim', requires = 'tjdevries/colorbuddy.nvim' }
    use { 'Th3Whit3Wolf/onebuddy', rrequires = 'tjdevries/colorbuddy.nvim' }
    -- File icons
    use 'kyazdani42/nvim-web-devicons'
    -- LSP config
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'
    -- LSPSaga
    use "glepnir/lspsaga.nvim"
    -- CMP for autocompletion + completion resources
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'ray-x/cmp-treesitter'
    -- Vsnip for CMP (required for autocompletion with LSP
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
    -- Autoclose tags
    use 'windwp/nvim-ts-autotag'
    -- Bufferline
    use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
    -- Luatree
    use 'kyazdani42/nvim-tree.lua'
    -- Nerd commenter (easy commenting)
    use 'preservim/nerdcommenter'
    -- Telescope
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
    -- Git blame
    use 'f-person/git-blame.nvim'
    use 'tpope/vim-fugitive'
    -- Lualine
    use 'nvim-lualine/lualine.nvim'
    -- Auto pairs
    use 'jiangmiao/auto-pairs'
    -- Diagnostics gutter
    use 'folke/trouble.nvim'
    -- Formatting
    use 'sbdchd/neoformat'
    -- Transparent background
    use 'xiyaowong/nvim-transparent'
end)

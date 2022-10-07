vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function()
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	-- Colorscheme
	use({ "navarasu/onedark.nvim" })
	-- File icons
	use("kyazdani42/nvim-web-devicons")
	-- LSP config
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig")
	-- null ls
	use("jose-elias-alvarez/null-ls.nvim")
	-- LSPSaga
	use("glepnir/lspsaga.nvim")
	-- CMP for autocompletion + completion resources
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lua")
	use("ray-x/cmp-treesitter")
	-- luasnip
	use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })
	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})
	-- Autoclose tags
	use("windwp/nvim-ts-autotag")
	-- Bufferline
	use({ "akinsho/bufferline.nvim", tag = "v2.*", requires = "kyazdani42/nvim-web-devicons" })
	-- Luatree
	use("kyazdani42/nvim-tree.lua")
	-- nvim-commenter
	use("terrortylor/nvim-comment")
	-- Telescope
	use("nvim-lua/plenary.nvim")
	use("nvim-telescope/telescope.nvim")
	use({
		"nvim-telescope/telescope-fzf-native.nvim",
		run = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
	})
	-- Git stuff
	use("f-person/git-blame.nvim")
	use("tpope/vim-fugitive")
	use("airblade/vim-gitgutter")

	-- Lualine
	use("nvim-lualine/lualine.nvim")
	-- Auto pairs
	use("jiangmiao/auto-pairs")
	-- Diagnostics gutter
	use("folke/trouble.nvim")
end)

vim.scriptencoding = "utf-8"
vim.g.mapleader = " "

local mapper = require("utilities.option-map")

local options = {
	encoding = "utf-8",
	fileencoding = "utf-8",
	relativenumber = true,
	hlsearch = false,
	hidden = true,
	errorbells = false,
	tabstop = 4,
	softtabstop = 4,
	shiftwidth = 4,
	expandtab = true,
	smartindent = true,
	nu = true,
	wrap = false,
	swapfile = false,
	backup = false,
	incsearch = true,
	termguicolors = true,
	scrolloff = 8,
	signcolumn = "yes",
	isfname = "@-@",
	clipboard = "unnamed,unnamedplus",
	showmatch = true,
	cmdheight = 0,
	updatetime = 50,
	cursorline = true,
	autoread = true,
	splitright = true,
	jumpoptions = "stack",
	completeopt = "menuone,noselect",
}

mapper(options)

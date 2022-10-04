-- each of these are documented in `:help nvim-tree.OPTION_NAME`
require("nvim-tree").setup({
	auto_reload_on_write = true,
	create_in_closed_folder = true,
	hijack_unnamed_buffer_when_opening = false,
	ignore_buffer_on_setup = false,
	sort_by = "name",
	disable_netrw = true,
	hijack_netrw = true,
	open_on_setup = false,
	ignore_ft_on_setup = {},
	open_on_tab = false,
	hijack_cursor = true,
	update_cwd = false,
	respect_buf_cwd = true,

	actions = {
		open_file = {
			quit_on_open = false,
			window_picker = {
				enable = true,
				chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
				exclude = {
					filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
					buftype = { "nofile", "terminal", "help" },
				},
			},
		},
	},

	renderer = {
		highlight_git = true,
		highlight_opened_files = "all",
		root_folder_modifier = ":~",
		add_trailing = true,
		group_empty = false,
		indent_markers = {
			enable = true,
		},
		icons = {
			padding = " ",
			symlink_arrow = " >> ",
			show = {
				file = true,
				folder = true,
				folder_arrow = true,
				git = true,
			},
			glyphs = {
				default = "",
				symlink = "",
				git = {
					unstaged = "✗",
					staged = "✓",
					unmerged = "",
					renamed = "➜",
					untracked = "★",
					deleted = "",
					ignored = "◌",
				},
				folder = {
					arrow_open = "",
					arrow_closed = "",
					default = "",
					open = "",
					empty = "",
					empty_open = "",
					symlink = "",
					symlink_open = "",
				},
			},
		},
		special_files = { "README.md", "Makefile", "MAKEFILE" },
	},

	diagnostics = {
		enable = true,
		show_on_dirs = true,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},

	update_focused_file = {
		enable = true,
		update_cwd = false,
		ignore_list = {},
	},

	system_open = {
		cmd = nil,
		args = {},
	},

	git = {
		enable = true,
		ignore = true,
		timeout = 500,
	},

	view = {
		width = 50,
		-- height = 30,
		hide_root_folder = false,
		side = "left",
		-- auto_resize = false,
		mappings = {
			custom_only = false,
			list = {},
		},

		number = true,
		relativenumber = true,
		signcolumn = "yes",
	},

	trash = {
		cmd = "trash",
		require_confirm = true,
	},
})

-- Keymaps
local nnoremap = require("utilities.key-map").nnoremap

nnoremap("<C-n>", "<cmd>NvimTreeToggle<CR>")
nnoremap("<leader>r", "<cmd>NvimTreeRefresh<CR>")
nnoremap("<leader>n ", "<cmd>NvimTreeFindFile<CR>")

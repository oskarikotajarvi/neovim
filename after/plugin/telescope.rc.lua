-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
-- require('telescope').load_extension('fzf')

-- Telescope keymaps
local nnoremap = require('okotajarvi.keymap').nnoremap

nnoremap("<leader>ff", "<cmd>Telescope find_files<cr>")
-- Live grep needs ripgrep
-- Mac: brew install ripgrep
-- Arch: sudo pacman -S ripgrep
nnoremap("<leader>fg", "<cmd>Telescope live_grep<CR>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<CR>")
nnoremap("<leader>fh", "<cmd>Telescope help_tags<CR>")
nnoremap("<leader>gb", "<cmd>Telescope git_branches<CR>")
nnoremap("<leader>gs", "<cmd>Telescope git_status<CR>")
nnoremap("<leader>gc", "<cmd> Telescope git_commits<CR>")


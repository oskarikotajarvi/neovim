require'FTerm'.setup({
    border = 'rounded'
})

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', 'ı', '<CMD>lua require("FTerm").toggle()<CR>', opts)
map('n', '<leader>lft', '<CMD>lua require("FTerm").run("ls")<CR>', opts)
map('t', 'ı', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opts)

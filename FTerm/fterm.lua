require'FTerm'.setup({
    border = 'rounded'
})

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', 'ı', '<CMD>lua require("FTerm").toggle()<CR>', opts)
map('n', '<leader>lftb', '<CMD>lua require("FTerm").run("npm run lint:fix && npm run test:build")<CR>', opts)
map('t', 'ı', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opts)

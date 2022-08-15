local api = vim.api

-- Highligh on yank
local yankGroup = api.nvim_create_augroup("YankHighlight", {clear = true})
api.nvim_create_autocmd("TextYankPost", {
    command = "silent! lua vim.highlight.on_yank()",
    group = yankGroup
})

-- No comments on new lines
api.nvim_create_autocmd("BufEnter", { callback = function() vim.opt.formatoptions = vim.opt.formatoptions - { "c","r","o" } end, })

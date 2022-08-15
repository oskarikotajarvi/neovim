require('bufferline').setup({
    offsets = {
        {
            filetype = "NvimTree",
            text = function()
              return vim.fn.getcwd()
            end,
            highlight = "Directory",
            text_align = "left"
        }
    },
    diagnostics = "nvim_lsp",
})

local nnoremap = require('okotajarvi.keymap').nnoremap
nnoremap("gb", "<cmd>BufferLinePick<CR>")

require('bufferline').setup({
    options = {
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                text_align = "left"
            }
        },
        diagnostics = "nvim_lsp",
    }
})

local nnoremap = require('okotajarvi.keymap').nnoremap
nnoremap("gb", "<cmd>BufferLinePick<CR>")

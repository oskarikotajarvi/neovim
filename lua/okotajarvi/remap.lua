local inoremap = require('okotajarvi.keymap').inoremap
local vnoremap = require('okotajarvi.keymap').vnoremap
local nnoremap = require('okotajarvi.keymap').nnoremap

-- kj to Esc
inoremap("kj", "<Esc>")

-- Keep visual mode after indenting with < and >
vnoremap("<", "<gv")
vnoremap(">", ">gv")

-- Clear search highlighting with Escape key
nnoremap("<silent><esc>", "<cmd>noh<CR><esc>")

-- Moving between windows 
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-l>", "<C-w>l")

-- Delete a line without setting it to registry
nnoremap("<leader>dd", '"_dd')

-- Yank end of line
nnoremap("Y", "y$")

-- Keep cursor centered when going to next or previous result
nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")
nnoremap("J", "mzJ`z")

-- Undo breakpoints
inoremap(",", ",<c-g>u")
inoremap(".", ".<c-g>u")
inoremap("!", "!<c-g>u")
inoremap("?", "?<c-g>u")
inoremap("{", "{<c-g>u")
inoremap("(",  "(<c-g>u")
inoremap("[", "[<c-g>u")

-- Jumplist mutations
--nnoremap("<expr> k", '(v:count > 5 ? "m'" . v:count : "") . 'k'")
--nnoremap("<expr j", '(v:count > 5 ? "m'" . v:count : "") . 'j'")

-- Move visual blocks with J and K
vnoremap("J" ,"<cmd>m '>+1<CR>gv=gv")
vnoremap("K", "<cmd>m '>-2<CR>gv=gv")
inoremap("<C-j>", "<cmd>m .+1<CR>==")
inoremap("<C-k>", "<cmd>m .-2<CR>==")
-- Move current line with k and j
nnoremap("<leader>k", "<cmd>m .-2<CR>==")
nnoremap("<leader>j",  "<cmd>m .+1<CR>==")

require'nvim-lsp-installer'.setup({
    automatic_installation = true
})

local nvim_lsp = require('lspconfig')

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-y>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
  buf_set_keymap('n', '<leader>D', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', '<leader>d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
  buf_set_keymap('n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

end

-- pyright commented out
-- Add new language servers here with their installation instructions
-- gopls: go install golang.org/x/tools/gopls@latest
-- golangci_lint_ls:
    -- go install github.com/nametake/golangci-lint-langserver@latest
    -- go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.42.1
-- FOR GO STUFF: MAKE SURE $GOPATH/bin is in $PATH
-- angularls: sudo npm install -g @angular/language-server
-- cssls, html: sudo npm i -g vscode-langservers-extracted
-- pyright: pip install pyright
-- tsserver: sudo npm install -g typescript typescript-language-server
-- bashls: sudo npm i -g bash-language-server
-- vimls: sudo npm install -g vim-language-server
-- local servers = {'gopls', 'golangci_lint_ls', 'angularls', 'cssls', 'html', 'tsserver', 'bashls', 'vimls', 'sumneko_lua', 'java_language_server' }
local servers = {'angularls', 'cssls', 'html', 'tsserver', 'bashls', 'vimls', 'sumneko_lua', 'jdtls'}

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Loop to easily add all language servers
for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
        capabilities = capabilities,
        on_attach = on_attach,
        flags = {
            debounce_text_changes = 150,
        }
    }
end

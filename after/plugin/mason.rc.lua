require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { 'angularls', 'cssls', 'html', 'tsserver', 'bashls', 'vimls', 'sumneko_lua', 'gopls',
        'golangci_lint_ls' },
    automatic_installation = true
})

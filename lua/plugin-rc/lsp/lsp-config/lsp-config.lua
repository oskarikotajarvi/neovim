-- General
local servers = require("plugin-rc.lsp.settings")

-- LSP
local nvim_lsp = require("lspconfig")

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


for _, lsp in pairs(servers) do
    nvim_lsp[lsp.name].setup({
        capabilities = lsp.capabilities,
        settings = lsp.settings,
        flags = lsp.flags,
        on_attach = lsp.on_attach,
    })
end

-- Mason
local server_names = {}

for _, server in pairs(servers) do
    table.insert(server_names, server.name)
end

require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = server_names,
    automatic_installation = true,
})


-- Null-ls
local formatting = require("null-ls").builtins.formatting
local sources = {
    formatting.prettier,
    formatting.stylua,
}
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
require("null-ls").setup({
    -- you can reuse a shared lspconfig on_attach callback here
    sources = sources,
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({
                        bufnr = bufnr,
                        filter = function()
                            return client.name == "null-ls"
                        end,
                    })
                end,
            })
        end
    end,
})

-- LSP saga
require("lspsaga").init_lsp_saga({
    finder_request_timeout = 5000,
})

vim.keymap.set("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })
vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })
vim.keymap.set("v", "<leader>ca", "<cmd><C-U>Lspsaga range_code_action<CR>", { silent = true })
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })
vim.keymap.set("n", "gs", "<Cmd>Lspsaga signature_help<CR>", { silent = true })
vim.keymap.set("n", "gr", "<cmd>Lspsaga rename<CR>", { silent = true })
vim.keymap.set("n", "ı", "<cmd>Lspsaga open_floaterm<CR>", { silent = true })
vim.keymap.set("t", "ı", "<C-\\><C-n><cmd>Lspsaga close_floaterm<CR>", { silent = true })
vim.keymap.set("n", "<leader>e", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { silent = true })
vim.keymap.set("n", "<leader>e", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })
vim.keymap.set("n", "<leader>d", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })
vim.keymap.set("n", "<leader>D", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })
vim.keymap.set("n", "[E", function()
    require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })
vim.keymap.set("n", "]E", function()
    require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })
vim.keymap.set("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", { silent = true })

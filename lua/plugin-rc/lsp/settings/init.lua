local M = {}

M.html = require("plugin-rc.lsp.settings.html")
M.angularls = require("plugin-rc.lsp.settings.angularls")
M.bashls = require("plugin-rc.lsp.settings.bashls")
M.clangd = require("plugin-rc.lsp.settings.clangd")
M.cssls = require("plugin-rc.lsp.settings.cssls")
M.golangci_lint_ls = require("plugin-rc.lsp.settings.golangci_lint_ls")
M.gopls = require("plugin-rc.lsp.settings.gopls")
M.sumneko_lua = require("plugin-rc.lsp.settings.sumneko_lua")
M.tsserver = require("plugin-rc.lsp.settings.tsserver")

return M

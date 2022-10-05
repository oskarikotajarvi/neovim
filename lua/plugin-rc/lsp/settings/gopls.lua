local M = {}

local on_attach = require("plugin-rc.lsp.general.on_attach")
local flags = require("plugin-rc.lsp.general.default_flags")

local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
local settings = {}

M.name = "gopls"
M.on_attach = on_attach
M.capabilities = capabilities
M.flags = flags
M.settings = settings

return M

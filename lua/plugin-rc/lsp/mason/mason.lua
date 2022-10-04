local servers = require("plugin-rc.lsp.settings.init")
local server_names = {}

for _, server in pairs(servers) do
    table.insert(server_names, server.name)
end

require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = server_names,
    automatic_installation = true,
})

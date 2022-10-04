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

local servers = require("plugin-rc.lsp.settings.init")

for _, lsp in pairs(servers) do
	nvim_lsp[lsp.name].setup({
		capabilities = lsp.capabilities,
		settings = lsp.settings,
		flags = lsp.flags,
		on_attach = lsp.on_attach,
	})
end

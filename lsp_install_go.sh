echo "Installing Go langservers.."
go install golang.org/x/tools/gopls@latest && go install github.com/nametake/golangci-lint-langserver@latest && go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.42.1
echo "Done"
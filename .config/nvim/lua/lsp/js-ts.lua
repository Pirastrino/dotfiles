require'lspconfig'.tsserver.setup {
    cmd = {'/home/martin/.volta/bin/typescript-language-server', '--stdio'},
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact"}, 
    settings = {
        documentFormatting = false
    }
}

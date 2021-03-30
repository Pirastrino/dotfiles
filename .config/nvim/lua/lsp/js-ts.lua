require'lspconfig'.tsserver.setup {
    cmd = {'/home/martin/.volta/bin/typescript-language-server', '--stdio'},
    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
    settings = {
        documentFormatting = false
    }
}

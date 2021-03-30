require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    'bash',
    'comment',
    'css',
    'graphql',
    'html',
    'javascript',
    'json',
    'lua',
    'regex',
    'tsx',
    'typescript',
  },
  highlight = { enable = true },
}

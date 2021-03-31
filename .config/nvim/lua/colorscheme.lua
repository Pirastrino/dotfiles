vim.o.termguicolors = true
vim.o.background = 'dark'
vim.cmd('colorscheme spaceduck')
vim.cmd([[ autocmd ColorScheme * :lua require('vim.lsp.diagnostic')._define_default_signs_and_highlights() ]])
vim.cmd([[ autocmd ColorScheme * :lua require('set-devicons').load() ]])


local o = vim.o
local wo = vim.wo
local bo = vim.bo

o.hlsearch = false
o.incsearch = true
o.hidden = true
o.showmode = false
o.errorbells = false
o.backup = false
o.undodir = '~/.undodir'
o.undofile = true
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 2
o.completeopt = 'menuone,noinsert,noselect'
bo.expandtab = true
bo.autoread = true
bo.swapfile = false
bo.buftype = ''
bo.smartindent = true
wo.number = true
wo.relativenumber = true
wo.wrap = false
wo.scrolloff = 12
wo.colorcolumn = '80'


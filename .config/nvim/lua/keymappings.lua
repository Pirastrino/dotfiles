local keymap = vim.api.nvim_set_keymap

keymap('n', '<Space>', '<NOP>', {
    noremap = true,
    silent = true
})

vim.g.mapleader = ' '

-- No hl
keymap('n', '<Leader>h', ':set hlsearch!<CR>', {
    noremap = true,
    silent = true
})

-- Window movement
keymap('n', '<C-j>', '<C-w>j', {
    silent = true
})
keymap('n', '<C-k>', '<C-w>k', {
    silent = true
})
keymap('n', '<C-l>', '<C-w>l', {
    silent = true
})
keymap('n', '<C-h>', '<C-w>h', {
    silent = true
})

-- Indenting
keymap('v', '>', '>gv', {
    noremap = true,
    silent = true
})
keymap('v', '<', '<gv', {
    noremap = true,
    silent = true
})

-- Move line
keymap('x', 'J', ':m \'>+1<CR>gv=gv', {
    noremap = true
})
keymap('x', 'K', ':m \'<-2<CR>gv=gv', {
    noremap = true
})

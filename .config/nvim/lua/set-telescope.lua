local sorters = require('telescope.sorters')
local actions = require('telescope.actions')
local previewers = require('telescope.previewers')
local keymap = vim.api.nvim_set_keymap
local options = {
    noremap = true
}

require('telescope').setup {
    defaults = {
        file_sorter = sorters.get_fzy_sorter,
        generic_sorter = sorters.get_generic_fuzzy_sorter,
        prompt_prefix = '> ',
        color_devicons = true,
        set_env = {
            ['COLORTERM'] = 'truecolor'
        },

        file_previewer = previewers.vim_buffer_cat.new,
        grep_previewer = previewers.vim_buffer_vimgrep.new,
        qflist_previewer = previewers.vim_buffer_qflist.new,

        mappings = {
            i = {
                ["<C-x>"] = false,
                ["<C-q>"] = actions.send_to_qflist,
                ["<esc>"] = actions.close
            },
	    n = { }
        }
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true
        }
    }
}

require('telescope').load_extension('fzy_native')

keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', options)
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', options)
keymap('n', '<leader>fb', '<cmd>Telescope buffers<CR>', options)
keymap('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', options)
keymap('n', '<leader>ps', [[:lua require'telescope.builtin'.grep_string({ search = vim.fn.input("Grep For > ")})<CR>]],
    options)
keymap('n', '<leader>vrc', [[:lua require'telescope.builtin'.find_files({ cwd = '~/.config/nvim/'})<CR>]], options)


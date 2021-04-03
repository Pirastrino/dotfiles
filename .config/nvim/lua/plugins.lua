-- Bootstrapping packer.nvim'
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local execute = vim.api.nvim_command

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
    execute 'packadd packer.nvim'
end

vim.cmd [[packadd packer.nvim]]
vim.cmd [[autocmd BufWritePost plugins.lua PackerCompile]]
-- vim.cmd 'autocmd BufWritePre *.lua lua vim.lsp.buf.formatting_sync(nil, 100)'

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    use 'kabouzeid/nvim-lspinstall'
    use 'nvim-treesitter/nvim-treesitter'
    use 'hrsh7th/nvim-compe'
    use 'hrsh7th/vim-vsnip'
    use {
        'tzachar/compe-tabnine',
        run = './install.sh',
        requires = 'hrsh7th/nvim-compe'
    }
    use 'terrortylor/nvim-comment'
    use 'lewis6991/gitsigns.nvim'
    use 'morhetz/gruvbox'
    use 'pineapplegiant/spaceduck'
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}, {'nvim-telescope/telescope-fzy-native.nvim'}}
    }
    use {
        'hoob3rt/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true
        },
        config = require('set-lualine').config()
    }
end)


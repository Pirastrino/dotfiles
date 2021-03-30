-- Bootstrapping packer.nvim'
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local execute = vim.api.nvim_command

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
    execute 'packadd packer.nvim'
end

vim.cmd [[packadd packer.nvim]]
-- vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile'
-- vim.cmd 'autocmd BufWritePre *.lua lua vim.lsp.buf.formatting_sync(nil, 100)'

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    use 'kabouzeid/nvim-lspinstall'
    use 'nvim-treesitter/nvim-treesitter'
    use 'hrsh7th/nvim-compe'
    use 'hrsh7th/vim-vsnip'
    use 'morhetz/gruvbox'
    use 'pineapplegiant/spaceduck'
    use 'kyazdani42/nvim-web-devicons'
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
        config = function()
            require('lualine').setup {
                options = {
                    theme = 'spaceduck',
                    section_separators = {'', ''},
                    component_separators = '|',
                    icons_enabled = true
                },
                sections = {
                    lualine_a = {{
                        'mode',
                        upper = true
                    }},
                    lualine_b = {{
                        'branch',
                        icons_enabled = true,
                        icon = 'ᚠ'
                    }},
                    lualine_c = {{
                        'filename',
                        file_status = true
                    }},
                    lualine_x = {'encoding', 'fileformat', 'filetype'},
                    lualine_y = {'progress'},
                    lualine_z = {'location'}
                },
                inactive_sections = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_c = {'filename'},
                    lualine_x = {'location'},
                    lualine_y = {},
                    lualine_z = {}
                }
            }
        end
    }
end)


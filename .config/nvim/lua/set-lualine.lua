local M = {}

M.config = function()
    require('lualine').setup {
        options = {
            theme = 'spaceduck',
            section_separators = '',
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
                icon = '',
                color_devicons = '#111111'
            }},
            lualine_c = {{'diff'},{
                -- 'diff',
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

return M

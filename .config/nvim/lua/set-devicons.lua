local M = {}

M.load = function()
    require'nvim-web-devicons'.setup {
        override = {},
        default = true
    }
end

return M

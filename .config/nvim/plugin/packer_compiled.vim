" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/martin/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/martin/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/martin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/martin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/martin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  gruvbox = {
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/gruvbox"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n�\4\0\0\6\0\26\0-6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0025\3\t\0004\4\3\0005\5\b\0>\5\1\4=\4\n\0034\4\3\0005\5\v\0>\5\1\4=\4\f\0034\4\3\0005\5\r\0>\5\1\4=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\3=\3\21\0025\3\22\0004\4\0\0=\4\n\0034\4\0\0=\4\f\0035\4\23\0=\4\14\0035\4\24\0=\4\16\0034\4\0\0=\4\18\0034\4\0\0=\4\20\3=\3\25\2B\0\2\1K\0\1\0\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\1\0\rfilename\16file_status\2\14lualine_b\1\2\2\0\vbranch\18icons_enabled\2\ticon\bᚠ\14lualine_a\1\0\0\1\2\1\0\tmode\nupper\2\foptions\1\0\0\23section_separators\1\3\0\0\b\b\1\0\3\ntheme\14spaceduck\18icons_enabled\2\25component_separators\6|\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  spaceduck = {
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/spaceduck"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/martin/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  }
}

-- Config for: lualine.nvim
try_loadstring("\27LJ\2\n�\4\0\0\6\0\26\0-6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0025\3\t\0004\4\3\0005\5\b\0>\5\1\4=\4\n\0034\4\3\0005\5\v\0>\5\1\4=\4\f\0034\4\3\0005\5\r\0>\5\1\4=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\3=\3\21\0025\3\22\0004\4\0\0=\4\n\0034\4\0\0=\4\f\0035\4\23\0=\4\14\0035\4\24\0=\4\16\0034\4\0\0=\4\18\0034\4\0\0=\4\20\3=\3\25\2B\0\2\1K\0\1\0\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\1\0\rfilename\16file_status\2\14lualine_b\1\2\2\0\vbranch\18icons_enabled\2\ticon\bᚠ\14lualine_a\1\0\0\1\2\1\0\tmode\nupper\2\foptions\1\0\0\23section_separators\1\3\0\0\b\b\1\0\3\ntheme\14spaceduck\18icons_enabled\2\25component_separators\6|\nsetup\flualine\frequire\0", "config", "lualine.nvim")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry

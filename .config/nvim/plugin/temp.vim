" Ntrew
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

hi! ColorColumn ctermbg=0 guibg=#0f111b
hi! SignColumn ctermbg=NONE guibg=NONE
hi! Normal ctermbg=NONE guibg=NONE
hi! Comment guifg=#686f9a
hi! EndOfBuffer ctermbg=NONE guibg=NONE
hi! LineNr ctermbg=NONE guibg=NONE guifg=#686f9a
hi! CursorLineNr ctermbg=NONE guibg=NONE guifg=#e39400
hi! Visual guibg=#686f9a
hi! VertSplit ctermbg=NONE guibg=#30365f guifg=#0f111b

hi! GitSignsAdd guifg=#28A745
hi! GitSignsChange guifg=#2188FF
hi! GitSignsDelete guifg=#e33400
hi! GitSignsCurrentLineBlame guifg=#686f9a

hi! NvimTreeFolderIcon guifg=#F39C12

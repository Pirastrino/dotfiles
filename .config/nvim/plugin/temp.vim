" Ntrew
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 20
let g:NetrwIsOpen=0

fun! ToggleNetrw(left)
  if g:NetrwIsOpen
    let i = bufnr("$")
    while (i >= 1)
      if (getbufvar(i, "&filetype") == "netrw")
        silent exe "bwipeout " . i
      endif
      let i -= 1
    endwhile
    let g:NetrwIsOpen=0
  else
    let g:NetrwIsOpen=1
      if (a:left == 1)
        silent Vex
      else
        silent Vex!
      endif
    set winwidth=40
  endif
endfun

noremap <silent> <C-E> :call ToggleNetrw(0)<CR>
noremap <silent> <leader>pv :call ToggleNetrw(1)<CR>

" set t_8f = ^[[38;2;%lu;%lu;%lum
" set t_8b = ^[[48;2;%lu;%lu;%lum
" set t_Co=256
" set termguicolors
"
hi! Normal ctermbg=NONE guibg=NONE
hi! EndOfBuffer ctermbg=NONE guibg=NONE
hi! LineNr ctermbg=NONE guibg=NONE
hi! CursorLineNr ctermbg=NONE guibg=NONE
hi! Visual guibg=#686F9A 

inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })


call plug#begin('~/.vim/plugged')
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzy-native.nvim'
  Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-git'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'tmux-plugins/vim-tmux-focus-events'
  Plug 'preservim/nerdcommenter'
  Plug 'morhetz/gruvbox'
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/completion-nvim'
call plug#end()

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

let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_invert_celection='0'
let g:airline_theme='minimalist'

colorscheme gruvbox
set background=dark
hi Normal guibg=NONE ctermbg=NONE

let mapleader = " "
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>fh <cmd>Telescope help_tags<CR>
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>

" Vim Fugitive
nnoremap <leader>gf :diffget //2<CR>
nnoremap <leader>gj :diffget //3<CR>
nnoremap <leader>gs :G<CR>

nnoremap <C-p> <cmd>Telescope find_files<CR>
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap <leader>p "_dP
nnoremap <leader>y "+y

" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup PIRASTRINO
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

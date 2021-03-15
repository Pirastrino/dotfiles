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

" lua require'nvim_lsp'.tsserver.setup{ on_attach=require'completion'.on_attach }
" Ntrew
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 20

let g:gruvbox_contrast_dark = 'hard'
" if exists('+termguicolors')
  " let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  " let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" endif
let g:gruvbox_invert_celection='0'
let g:airline_theme='minimalist'

colorscheme gruvbox
set background=dark
hi Normal guibg=NONE ctermbg=NONE

let mapleader = " "
nnoremap <leader>pv :Vex! \| vertical resize 40<CR>
nnoremap <leader>pV :Vex \| vertical resize 40<CR>
nnoremap <leader>ph :Sex<CR>
nnoremap <leader>pr :Rex<CR>
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

nnoremap <leader>e <C-w>
nnoremap <leader>bd :bd<CR>

" let g:gitgutter_sign_added = '➕'
" let g:gitgutter_sign_modified = ' '
" let g:gitgutter_sign_removed = '➖'

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

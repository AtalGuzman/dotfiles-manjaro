filetype on
filetype plugin indent on
filetype plugin on
syntax on

execute pathogen#infect()
let g:airline_theme='airblader'
let g:airline_powerline_fonts=1

set laststatus=2
set noshowmode

set nocompatible
set showcmd
set ignorecase
set smartcase
set expandtab
set smarttab
set hlsearch
set number
set noswapfile
set cursorline
set autoindent

set shiftwidth=4
set softtabstop=4
set scrolloff=8
set sidescrolloff=10

set timeoutlen=1000
set ttimeoutlen=0

" for cross-terminal clipboard support
set clipboard=unnamed

:noremap / :set hlsearch<CR>/

" toggle paste mode
:noremap <F2> :set paste! nopaste?<CR>

" toggle number lines
:noremap <F3> :set nonumber! nonumber?<CR>

" toggle search highlights
:noremap <F4> :set hlsearch! hlsearch?<CR>

" for code in {0..255}; do echo -e "\e[38;05;${code}m $code: Test"; done
augroup ColorOverride
    au!
"    autocmd ColorScheme * highlight Normal       ctermbg=0
"    autocmd ColorScheme * highlight NonText      ctermbg=0
"    autocmd ColorScheme * highlight Search       ctermbg=1   ctermfg=255 cterm=NONE
"    autocmd ColorScheme * highlight Visual       ctermbg=3   ctermfg=0
"    autocmd ColorScheme * highlight LineNr       ctermbg=0   ctermfg=15
"    autocmd ColorScheme * highlight Cursor       ctermbg=1
"    autocmd ColorScheme * highlight CursorLine   ctermbg=0
"    autocmd ColorScheme * highlight CursorLineNr ctermbg=3   ctermfg=0
augroup END
" colorscheme jellybeans
colorscheme airblader

function TrimWhitespace()
  %s/\s*$//
  ''
:endfunction
command! Trim call TrimWhitespace()

" Shows the highlight group of whatever's under the cursor
 map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
 \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
 \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

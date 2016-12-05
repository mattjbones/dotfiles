set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'YankRing.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()            " required
filetype plugin indent on    " required

execute pathogen#infect()

syntax on
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

colorscheme molokai

set smartindent
set tabstop=3       	" how many spaces per tab
set shiftwidth=3    	" how many space per shif (>)
set smarttab        	" insert spaces at the next indent
"set expandtab
set undofile
set visualbell
set wrap
set textwidth=79
set formatoptions=qrn1
"set ruler
"set list

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='simple'

nnoremap <CR> :noh<CR><CR>

if has("gui_running")
    if has("gui_gtk2")
        set guifont=Inconsolata\ 12
    elseif has("gui_macvim")
        set guifont=Menlo\ Regular:h14
    elseif has("gui_win32")
        set guifont=Consolas:h11:cANSI
    endif
endif

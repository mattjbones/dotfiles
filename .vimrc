set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'YankRing.vim'

call vundle#end()            " required
filetype plugin indent on    " required

execute pathogen#infect()

syntax on
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

colorscheme atom-dark-256

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set undofile
set visualbell
set wrap
set textwidth=79
set formatoptions=qrn1

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

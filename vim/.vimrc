" Get the defaults that most users want
source $VIMRUNTIME/defaults.vim

" Needed for the stock vim on macOS
syntax on

" Highlights the current line
set cursorline

" Don't do soft-wrapping in the middle of words
set linebreak
" Indent when soft-wrapping
set breakindent
" Set set-wrapping indicator
set showbreak=›\ 

" Auto-indents new lines. Consider `smartindent` and `cindent` (for C lang) too.
set autoindent

" Tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Commands
" ==============================================================================
"
" NOTE: User commands start with a capital letter.
"
" Open Terminal Here
" Changes the local current directory to the directory of the current file and opens the terminal (handles relative paths too)
command! Oth execute 'lcd' fnameescape(expand('%:p:h')) | terminal

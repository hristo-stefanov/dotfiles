" Get the defaults that most users want
source $VIMRUNTIME/defaults.vim


" Some color schemes, such as macvim, support `dark` and `light` backgrounds,
" but most stock ones don't.
" This must be before `colorscheme`!!!
set background=light
colorscheme morning

" Needed for the stock vim on macOS
syntax on

" Highlights the current line
set cursorline

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

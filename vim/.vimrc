" Get the defaults that most users want
source $VIMRUNTIME/defaults.vim


" Enable truecolor support if this vim build supports it.
" It's needed to properly render the color specified by `highlight`.
if has('termguicolors')
    set termguicolors
endif

" Some color schemes, such as macvim, support `dark` and `light` backgrounds,
" but most stock ones don't.
" This must be before `colorscheme`!!!
set background=light
colorscheme morning
highlight Normal guibg=#EAE3DB

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

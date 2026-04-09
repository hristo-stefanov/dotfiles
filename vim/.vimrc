version 6.0
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
map! <S-Insert> <MiddleMouse>
inoremap <C-U> u
map Q gq
xmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
map <S-Insert> <MiddleMouse>
xnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
inoremap  u
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=indent,eol,start
set display=truncate
set fileencodings=ucs-bom,utf-8,default,latin1

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

set helplang=en
set history=200
set incsearch
set langnoremap
set nolangremap
set nomodeline
set mouse=a
set nrformats=bin,hex
set printoptions=paper:a4
set ruler
set scrolloff=5
set showcmd
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set termencoding=utf-8
set ttimeout
set ttimeoutlen=100
set wildmenu

" Highlights the current line
set cursorline

" Auto-indents new lines. Consider `smartindent` and `cindent` (for C lang) too.
set autoindent
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

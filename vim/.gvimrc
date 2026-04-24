set columns=80
set lines=35

" Setting `highlight` in .vimrc doesn't work well in the terminal on Linux and
" macOS even when `set termguicolors` is used. Henece, I use it only for GUIs.

if has("gui_macvim")
    " MacVim

    colorscheme macvim
    highlight Normal guibg=#EAE3DB
    set guifont=Menlo:h14
else
    " Gvim

    colorscheme morning
    highlight Normal guibg=#EAE3DB
    set guifont=Noto\ Mono\ 14
endif

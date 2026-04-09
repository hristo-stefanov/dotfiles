set columns=80
set lines=35

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

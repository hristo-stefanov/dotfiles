set columns=80
set lines=35

" In the terminal, vim adapts to the color scheme of the terminal emulator so 
" setting `highlight` in .vimrc doesn't work well. That's why, I use it only for GUIs.

if has("gui_macvim")
    " MacVim

    colorscheme macvim
    highlight Normal guibg=#EAE3DB
    set guifont=Menlo:h14
else
    " Gvim

    " Sets the background color
    highlight Normal guibg=#EAE3DB

    " Highlights the current line by underlining
    highlight CursorLine gui=underline

    set guifont=Noto\ Mono\ 14
endif

" Get the defaults that most users want
source $VIMRUNTIME/defaults.vim

" Use copy instead of rename to backup files when saving. This preserves the
" orignal file inode and birth timestamp among other things. It can be slower for
" huge files though.
set backupcopy=yes

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
command! Th call TerminalHere()

function! TerminalHere()
    if &filetype ==# 'netrw' && exists('b:netrw_curdir')
        let l:dir = b:netrw_curdir
    elseif expand('%:p') !=# ''
        let l:dir = expand('%:p:h')
    else
        let l:dir = getcwd()
    endif

    if has('macunix')
        call job_start(['open', '-a', 'Terminal', l:dir])
    else
        call job_start(['x-terminal-emulator'], {'cwd': l:dir})
    endif
endfunction



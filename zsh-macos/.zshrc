export EDITOR=vim

# Enable vim keybinding
bindkey -v

# Indicate vim mode with cursor shape
function zle-keymap-select {
    if [[ $KEYMAP == vicmd ]]; then
        printf '\e[1 q' # block
    else
        printf '\e[5 q' # beam
    fi
}

function zle-line-init {
    # set cursor shape to beam on prompt start
    printf '\e[5 q' 
}

function preexec {
    # set cursor shape to block before running external commands such as vim
    printf '\e[1 q' 
}

zle -N zle-keymap-select
zle -N zle-line-init

# Android SDK tools
export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools"

# Symbolic links to some tools get installed in ~/.local/bin
export PATH="$HOME/.local/bin:$PATH"

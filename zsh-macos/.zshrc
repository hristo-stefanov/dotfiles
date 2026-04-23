export EDITOR=vim

# Enable vim keybinding
bindkey -v

# Show vim mode in prompt
function zle-keymap-select {
    if [[ $KEYMAP == vicmd ]]; then
        printf '\e[1 q' # block
    else
        printf '\e[5 q' # beam
    fi
}

function zle-line-init {
    printf '\e[5 q' # beam on prompt start
}

zle -N zle-keymap-select
zle -N zle-line-init

# Android SDK tools
export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools"

# Symbolic links to some tools get installed in ~/.local/bin
export PATH="$HOME/.local/bin:$PATH"

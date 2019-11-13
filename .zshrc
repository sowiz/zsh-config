# Vi mode
bindkey -v

# No escape delay
KEYTIMEOUT=1

# Autocompletion
autoload -Uz compinit
compinit

# Scripts
# - https://github.com/zdharma/fast-syntax-highlighting
source ~/.zsh-scripts/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
# - https://github.com/sowiz/zsh-config/blob/master/.zsh-scripts/expand-alias.zsh
source ~/.zsh-scripts/expand-alias.zsh

# Alias
alias blk='lsblk'
alias c='cd'
alias l='ls -lah'
alias m='sudo mount /dev/'
alias mkd=mkdir
alias q=exit
alias s='sudo'
alias t=touch
alias um='sudo umount /mnt'
alias usb=lsusb
alias vim=nvim
alias weather='curl wttr.in'

# Replace shell with tmux
if [[ ! $TMUX ]]; then
    if [[ $(tmux list-sessions | sed '/attached/d' | wc -l) = '0' ]]; then
        exec tmux
    else
        exec tmux attach
    fi
fi

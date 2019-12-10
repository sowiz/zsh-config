# Replace shell with tmux
if [[ ! $TMUX ]]; then
    if [[ $(tmux list-sessions | sed '/attached/d' | wc -l) = '0' ]]; then
        exec tmux
    else
        exec tmux attach
    fi
fi

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
alias f='nnn; cd "$(< ~/.config/nnn/tmp)"; clear'

alias blk='lsblk'
alias c='cd'
alias jc='cd ~/Documents/Code'
alias jcd='cd ~/Documents/Code/DotnetCore'
alias jdesk='cd ~/Desktop'
alias jdl='cd ~/Downloads'
alias jdoc='cd ~/Documents'
alias jsrc='cd ~/Documents/Source'
alias l='ls -lah'
alias m='sudo mount /dev/'
alias mkd=mkdir
alias q=exit
alias s='sudo'
alias t=touch
alias um='sudo umount /mnt'
alias usb=lsusb
alias vim=nvim
alias wttr='curl wttr.in'

alias g=git
alias ga='git add'
alias gb='git branch'
alias gbd='git branch -d'
alias gbdd='git branch -D'
alias gc='git commit -m'
alias gca='git commit --amend'
alias gcaa='git commit --amend --no-edit'
alias gck='git checkout'
alias gckb='git checkout -b'
alias gd='git diff'
alias gds='git diff --staged'
alias gf='git fetch'
alias gfm='git pull'
alias gfmo='git pull origin'
alias gfo='git fetch origin'
alias gi='git init'
alias gl='git log'
alias gm='git merge'
alias gp='git push'
alias gpo='git push origin'
alias gpom='git push origin master'
alias gr='git remote'
alias gra='git remote add'
alias gs='git status'
alias gsshc='git clone git@github.com:'
alias gigdc='wget "https://raw.githubusercontent.com/dotnet/core/master/.gitignore"'

# NVM
function load-nvm ()
{
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
}

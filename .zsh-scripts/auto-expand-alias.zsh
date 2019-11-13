# Alias expansion
# NB, This script requires autocompletion to be enabled

# Expand alias on enter
expand_alias_enter() {
    zle _expand_alias
    zle accept-line
}

# Expand alias on space
expand_alias_space() {
    zle _expand_alias
    zle self-insert
}

# Create widgets
zle -N expand_alias_enter
zle -N expand_alias_space

# Bind keys
bindkey '^M' expand_alias_enter
bindkey ' ' expand_alias_space

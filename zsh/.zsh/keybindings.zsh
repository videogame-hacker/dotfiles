if (( ${+terminfo[smkx]} )) && (( ${+terminfo[rmkx]} )); then
  function zle-line-init() {
    echoti smkx
  }
  function zle-line-finish() {
    echoti rmkx
  }
  zle -N zle-line-init
  zle -N zle-line-finish
fi

bindkey -e

bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}"  end-of-line

bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
bindkey "${terminfo[kdch1]}" delete-char
bindkey "${terminfo[kcbt]}" reverse-menu-complete
bindkey "${terminfo[kpp]}" up-line-or-history
bindkey "${terminfo[knp]}" down-line-or-history

autoload -U up-line-or-beginning-search
zle -N up-line-or-beginning-search
bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search

autoload -U down-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "${terminfo[kcud1]}" down-line-or-beginning-search

bindkey "$terminfo[cuu1]" up-line-or-beginning-search
bindkey "$terminfo[cud1]" down-line-or-beginning-search

bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word

bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line

bindkey '^[[3~' delete-char
bindkey '^?' backward-delete-char

bindkey '^[[3;5~' delete-word
bindkey '^H' backward-delete-word

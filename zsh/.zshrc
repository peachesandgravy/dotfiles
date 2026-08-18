#!/bin/zsh

# prompt
autoload -U colors && colors
PS1="%B%{$fg[green]%}%n%{$fg[white]%}@%{$fg[green]%}%m %{$fg[magenta]%}%1~ %{$reset_color%}%#%b "

# autocompletion
autoload -U compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# history
HISTFILE=~/.zhistory
HISTSIZE=10000

# enable vi mode
bindkey -v

function zle-keymap-select {
  if [[ $KEYMAP == vicmd ]]; then
    print -n -- $'\e[1 q'
  else
    print -n -- $'\e[5 q'
  fi
}
zle -N zle-keymap-select

function zle-line-init {
  print -n -- $'\e[5 q'
}
zle -N zle-line-init

function zle-line-finish {
  print -n -- $'\e[5 q'
}
zle -N zle-line-finish

# options
setopt autocd
setopt correct

# source aliases
source ~/.zaliases

# source plugins (macos)
source /opt/homebrew/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-autopair/autopair.zsh

# source plugins (linux)
# source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
# source /usr/share/zsh/plugins/zsh-autopair/autopair.zsh

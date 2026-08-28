#!/bin/zsh

# this file heavily plagarizes Luke Smith's .zshrc

# prompt
autoload -U colors && colors

setopt PROMPT_SUBST

fish_pwd() {
  echo "${PWD/#$HOME/~}" | sed -E 's|([^/])[^/]*/|\1/|g'
}

PS1="%B%{$fg[green]%}%n%{$fg[white]%}@%{$fg[green]%}%m: %{$fg[magenta]%}\$(fish_pwd) %{$reset_color%}%#%b "

# source completion settings
source ~/.zsh/.zcompletion

# history
HISTFILE=~/.zhistory
HISTSIZE=10000000

# enable vi mode
bindkey -v
export KEYTIMEOUT=1

# change cursor shape based on vi mode
function zle-keymap-select () {
  case $KEYMAP in
    vicmd) echo -ne '\e[1 q';;
    viins|main) echo -ne '\e[5 q';;
  esac
}
zle -N zle-keymap-select
zle-line-init() {
  zle -K viins
  echo -ne '\e[5 q'
}
zle -N zle-line-init
echo -ne '\e[5 q'
prexec() { echo -ne '\e[5 q' ;}

# keybinds
bindkey -s '^f' '^ucd "$(dirname "$(fzf)")"\n'
bindkey '^[[P' delete-char

# options
setopt autocd
setopt correct

# source aliases
source ~/.zsh/.zaliases

# source zsh-syntax-highlighting and settings 
source /opt/homebrew/share/zsh-autopair/autopair.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# source plugins (linux)
# source /usr/share/zsh/plugins/zsh-autopair/autopair.zsh
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
# source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

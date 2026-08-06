# #!/bin/zsh

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

# source aliases
source ~/.zaliases

# source plugins (macos)
source /opt/homebrew/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-autopair/autopair.zsh

# source plugins (linux)

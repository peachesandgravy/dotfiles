autoload -U colors && colors
PS1="%B%{$fg[green]%}%n%{$fg[white]%}@%{$fg[green]%}%m %{$fg[magenta]%}%1~ %{$reset_color%}%#%b "

autoload -U compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zmodload zsh/complist
compinit
_comp_options+=(globdots)

alias ls="ls --color=auto"
alias grep="grep --color=auto"

alias ll="ls -al"
alias htop="sudo htop"
alias diskfree="df -h | head -n 2"
alias vimrc="nvim ~/.config/nvim/lua/config/lazy.lua"
alias lazyrc="nvim ~/.config/nvim/lua/plugins/spec.lua"
alias resetdock="defaults delete com.apple.dock; killall Dock"
alias unrar="tar -xf"
alias lsblk="diskutil list"

source /opt/homebrew/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

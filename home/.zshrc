autoload -Uz compinit promptinit
compinit
promptinit

setopt appendhistory
unsetopt beep

bindkey -e

HISTFILE=~/.histfile
HISTSIZE=10000
PROMPT="%1~ %% "
SAVEHIST=10000

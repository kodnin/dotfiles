source ~/.environment.sh

autoload -Uz compinit
compinit

setopt appendhistory
unsetopt beep

bindkey -e

HISTFILE=~/.histfile
HISTSIZE=100000
PROMPT="%1~ %# "
SAVEHIST=100000

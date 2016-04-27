autoload -Uz compinit promptinit
compinit
promptinit

setopt appendhistory
unsetopt beep

bindkey -e

HISTFILE=~/.histfile
HISTSIZE=100000
PROMPT="%1~ %% "
SAVEHIST=100000

export PATH="~/.bin:$PATH"

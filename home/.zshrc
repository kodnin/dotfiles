source ~/.environment.sh

autoload -Uz compinit vcs_info

compinit
zstyle ":completion:*" menu select

precmd() { vcs_info }
zstyle ":vcs_info:git*" formats "(%b) "
PROMPT='%1~ ${vcs_info_msg_0_}%# '

bindkey -e

setopt appendhistory
setopt prompt_subst
unsetopt beep

HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000

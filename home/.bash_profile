source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh

[ -f ~/.local.sh ] && source ~/.local.sh

export HISTFILESIZE=100000
export HISTSIZE=100000
export PATH="~/.bin:$PATH"
export PS1='\W$(__git_ps1 " (%s)") % '

alias bup="brew update && brew upgrade && brew cleanup"
alias e='emacsclient -nw -a "" -s term'
alias em='emacsclient -c -n -a "" -s gui'
alias ls="ls -AG"
alias rm="rm -i"

shopt -s histappend

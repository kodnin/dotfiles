[ -f ~/.local.sh ] && source ~/.local.sh

alias bup="brew update && brew upgrade && brew cleanup"
alias e='emacsclient -nw -a "" -s term'
alias em='emacsclient -c -n -a "" -s gui'
alias ls="ls -AG"
alias rm="rm -i"
alias v=vim
alias vi=vim

export PATH="~/.bin:$PATH"

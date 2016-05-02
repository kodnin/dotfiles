[ -f ~/.local.sh ] && source ~/.local.sh

alias bup="brew update && brew upgrade && brew cleanup"
alias e='emacsclient -a "" -c -n'
alias ls="ls -AG"
alias rm="rm -i"
alias v=vim
alias vi=vim

export HOMEBREW_NO_ANALYTICS=1
export PATH="~/.bin:$PATH"

source ~/.environment.sh

source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh

export HISTFILESIZE=100000
export HISTSIZE=100000
export PS1='\W$(__git_ps1 " (%s)") % '

shopt -s histappend

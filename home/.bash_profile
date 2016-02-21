source "/usr/local/etc/bash_completion.d/git-completion.bash"
source "/usr/local/etc/bash_completion.d/git-prompt.sh"

export PATH="./bin:~/.bin:$PATH"
export PS1='\w$(__git_ps1 " (%s)") % '

alias ls="ls -AG"

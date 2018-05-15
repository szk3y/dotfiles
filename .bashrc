#
# ~/.bashrc
#

export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin

alias mv='mv -i'
alias cp='cp -i'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# rainbow
PS1='\[\e[1;31m\]\u\[\e[1;33m\]@\[\e[1;32m\]\h\[\e[1;36m\]:\[\e[1;34m\]\w\[\e[1;35m\]$\[\e[m\] '
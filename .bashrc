eval $(dircolors -b)
alias mv='mv -i'
alias cp='cp -i'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# rainbow
export PS1="\[\e[1;31m\]\u\[\e[1;33m\]@\[\e[1;32m\]\h\[\e[1;36m\]:\[\e[1;34m\]\w\[\e[1;35m\]\$(git branch 2>/dev/null | grep '^*' | cut -d ' ' -f 2 | xargs -Ix echo \(x\))$\[\e[m\] "
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
export PATH="/usr/local/go/bin:$HOME/bin:$HOME/.local/bin/:$PATH"

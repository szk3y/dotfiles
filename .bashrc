eval $(dircolors -b)
alias mv='mv -i'
alias cp='cp -i'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# rainbow
export PS1="\[\e[1;31m\]\u\[\e[1;33m\]@\[\e[1;32m\]\h\[\e[1;36m\]:\[\e[1;34m\]\w\[\e[1;35m\]\$(hg branch 2>/dev/null | xargs -Ix echo \(x\))\$(git branch 2>/dev/null | grep '^*' | cut -d ' ' -f 2- | xargs -Ix echo \(x\))$\[\e[m\] "
export GOROOT="$HOME/go/go-1.10.3"
export GOPATH="$HOME/go/packages"
export PATH="$GOROOT/bin:$GOPATH/bin:$HOME/.cargo/bin:$HOME/bin:$HOME/.local/bin/:$PATH"

if [ -f '.bashrc.local' ]; then
  source '.bashrc.local'
fi

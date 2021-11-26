eval $(dircolors -b)
alias mv='mv -i'
alias cp='cp -i'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

green="\[\e[0;32m\]"
blue="\[\e[0;34m\]"
magenta="\[\e[0;35m\]"
white="\[\e[0;37m\]"
RED="\[\e[1;31m\]"
GREEN="\[\e[1;32m\]"
YELLOW="\[\e[1;33m\]"
BLUE="\[\e[1;34m\]"
MAGENTA="\[\e[1;35m\]"
CYAN="\[\e[1;36m\]"
WHITE="\[\e[1;37m\]"
ENDCOLOR="\[\e[m\]"
OKMSG="OK"
NGMSG="NG"

# rainbow
#export PS1="\[\e[1;31m\]\u\[\e[1;33m\]@\[\e[1;32m\]\h\[\e[1;36m\]:\[\e[1;34m\]\w\[\e[1;35m\]\$(hg branch 2>/dev/null | xargs -Ix echo \(x\))\$(git branch 2>/dev/null | grep '^*' | cut -d ' ' -f 2- | xargs -Ix echo \(x\))$\[\e[m\] "
export PS1="${green}\u@\h${blue}(\D{%Y/%m/%d-%T})\$(if [ \$? == 0 ] && [ -f ~/.show_exit_code ]; then echo '${GREEN}${OKMSG}'; elif [ -f ~/.show_exit_code ]; then echo '${RED}${NGMSG}'; fi)${white}:${BLUE}\w${magenta}\$(hg branch 2>/dev/null | xargs -Ix echo \(x\))\$(git branch 2>/dev/null | grep '^*' | cut -d ' ' -f 2- | xargs -Ix echo \(x\))\n${BLUE}\$${ENDCOLOR} "
#export PS1="${green}\u@\h${blue}(\D{%Y/%m/%d-%T})${WHITE}:${BLUE}\w${MAGENTA}\$(hg branch 2>/dev/null | xargs -Ix echo \(x\))\$(git branch 2>/dev/null | grep '^*' | cut -d ' ' -f 2- | xargs -Ix echo \(x\))\n${BLUE}\$${ENDCOLOR} "
export GOPATH="$HOME/go/packages"
export PATH="$GOPATH/bin:$HOME/.cargo/bin:$HOME/bin:$HOME/.local/bin/:$PATH"

if [ -f '.bashrc.local' ]; then
  source '.bashrc.local'
fi

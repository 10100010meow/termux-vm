###############################################################
##
##  Profile for interactive bash
##
###############################################################

## make sure that shell is non-interactive
[[ $- != *i* ]] && return

export HISTFILE="${HOME}/.bash_history"
export HISTSIZE=1024
export HISTFILESIZE=16384
export HISTCONTROL="ignoreboth"

##
## Variable 'SHELL' is already set by 'basic_environment.sh',
## but we need also set it in 'bash.bashrc' so this variable
## will be updated on every new shell created.
##
export SHELL=$(readlink "/proc/$$/exe")

## set X/Termux terminal title
case "${TERM}" in
    xterm*|rxvt*)
        TERM_TITLE="\[\e]0;termux [\w]\a\]"
        ;;
    *)
        ;;
esac

PS1="${TERM_TITLE}\[\e[1;34m\][\[\e[m\]\[\e[1;31m\]termux\[\e[m\]\
\[\e[1;34m\]]\[\e[m\]\[\e[34m\]:\[\e[m\]\[\e[1;32m\]\w\[\e[m\]\
\[\e[1;34m\]:\[\e[m\]\[\e[1;37m\]\\$\[\e[m\] "

PS2='> '
PS3='> '
PS4='+ '

shopt -s checkwinsize
shopt -s cmdhist
shopt -s globstar
shopt -s histappend
shopt -s histverify

###############################################################
##
##  Setup aliases
##
###############################################################

# setup colorful output
if [ -r "${HOME}/.dircolors" ]; then
    eval $(dircolors -b "${HOME}/.dircolors")
else
    eval $(dircolors -b "${PREFIX}/etc/dircolors.conf")
fi

alias dir='dir --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias l='ls --color=auto'
alias la='ls -a --color=auto'
alias ll='ls -l --color=auto'
alias lo='ls -la --color=auto'
alias vdir='vdir --color=auto'

# for safety
alias cp='cp -i'
alias ln='ln -i'
alias mv='mv -i'
alias rm='rm -i'

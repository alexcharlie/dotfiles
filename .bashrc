# Comment in the above and uncomment this below for a color prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
    ;;
*)
    ;;
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi

# some more ls aliases
alias l='ls'
alias ls='ls -G'
alias ll='ls -lG'
alias la='ls -al'
#alias l='ls -CF'
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export EDITOR=vi
export PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:$PATH"
export MANPATH=/opt/local/share/man:$MANPATH
source .git-completion.bash
if [ `whoami` = 'root' ]; then
  export PS1="\[\033[01;31m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] "
else
  export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;32m\]$(__git_ps1 " (%s)")\[\033[01;34m\] \$\[\033[00m\] '
#  export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;32m\]\[\033[01;34m\] \$\[\033[00m\] '
fi

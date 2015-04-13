# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
EDITOR=vim
PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin
PS1="[\u \W \t]\\$ "
export PS1 EDITOR PATH

function bgrep {
  ag "$@" $(bundle show --paths) .
}

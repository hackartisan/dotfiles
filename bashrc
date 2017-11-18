# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# set up chruby
source /usr/local/share/chruby/chruby.sh
chruby ruby-2.4.2

# User specific aliases and functions
EDITOR=vim
alias bunx='bundle exec'
PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin
PATH=$PATH:/usr/local/bin/fits-0.8.4
PS1="[\t \W]\\$ "
export PS1 EDITOR PATH
export CLICOLOR=1

function bgrep {
  ag "$@" $(bundle show --paths) .
}

function gemfind {
  find . $(bundle show --paths) -name "*$@*"
}

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# turn on autocomplete for git branches, commands
source ~/dotfiles/git-completion.bash

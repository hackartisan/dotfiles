# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
EDITOR=vim
alias bunx='bundle exec'
PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin
PATH=$PATH:/usr/local/bin/fits-0.8.4
# Green prompt with time, working dir
PS1="\[\033[01;32m\][\t \W]\\$ \[\033[0m\]"
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

# set up chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

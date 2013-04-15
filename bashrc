#################
# Function Defs #
#################

for prefix in "" /usr /usr/local /opt/local /sw $HOME
do
  path=$prefix/etc/bash_completion
  [[ -f $path ]] && source $path
done

function silent { $@ > /dev/null 2>&1; }

##################################################
# Contains aliases, shell options, and functions #
##################################################
EMACS_CMD="emacs -nw"

export TIMEFORMAT=$'\nreal %3R\tuser %3U\tsys %3S\tpcpu %P\n'
export HISTTIMEFORMAT="%H:%M > "
export HISTIGNORE="&:bg:fg:ll:h"
export LESSCHARSET='latin1'
export EDITOR=vim
export PGHOST=localhost         # default for postgres
export PAGER="less"

shopt -s autocd
shopt -s cdable_vars
shopt -s cdspell
shopt -s checkhash
shopt -s checkjobs
shopt -s checkwinsize
shopt -s cmdhist
shopt -s dirspell
shopt -s globstar
shopt -s histappend
shopt -s histreedit
shopt -s histverify
shopt -s hostcomplete
shopt -s no_empty_cmd_completion
shopt -s progcomp
shopt -s promptvars

shopt -u mailwarn
unset MAILCHECK

alias c=clear
alias cp="cp -i -x"
alias e=exit
alias emacs="$EMACS_CMD"
alias gsub="git submodule"
alias h=history
alias j=jobs
alias l="ls -1"
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'
alias mkdir="mkdir -p"
alias more="less"
alias mv="mv -i"
alias path='echo -e ${PATH//:/\\n}'
alias rm="rm -i"
alias time="/usr/bin/time -p"
alias unlink="unlink -i"

PS1="\u@\h:
\w\`__git_ps1 '(%s)'\`> "


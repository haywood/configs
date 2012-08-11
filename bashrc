# Contains aliases, shell options, and functions

export TIMEFORMAT=$'\nreal %3R\tuser %3U\tsys %3S\tpcpu %P\n'
export HISTTIMEFORMAT="%H:%M > "
export HISTIGNORE="&:bg:fg:ll:h"
export LESSCHARSET='latin1'
export EDITOR="emacs"
export PAGER="less"

shopt -s autocd
shopt -s cdable_vars
shopt -s cdspell
shopt -s checkhash
shopt -s checkjobs
shopt -s checkwinsize
shopt -s cmdhist
shopt -s direxpand
shopt -s dirspell
shopt -s globstar
shopt -s histappend
shopt -s histreedit
shopt -s histverify
shopt -s hostcomplete
shopt -s no_empty_cmd_completion
shopt -s nullglob
shopt -s progcomp
shopt -s promptvars

shopt -u mailwarn
unset MAILCHECK

alias c=clear
alias cp="cp -i"
alias e=exit
alias emacs="emacs -nw"         # keep emacs in terminal
alias h=history
alias j=jobs
alias l="ls -1"
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'
alias mkdir="mkdir-p"
alias more="less"
alias mv="mv -i"
alias path='echo -e ${PATH//:/\\n}'
alias rm="rm -i"
alias time="/usr/bin/time -p"
alias unlink="unlink -i"

function current_branch {
    git branch 2> /dev/null | grep \* | sed -e s/\*\ \*//;
}

PS1="\u@\h:
\w(\`current_branch\`)> "

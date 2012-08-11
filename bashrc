# Contains aliases, shell options, and functions

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

export EDITOR="emacs"

alias c=clear
alias e=exit
alias j=jobs
alias l="ls -1"
alias mkdir="mkdir-p"
alias rm="rm -i"
alias unlink="unlink -i"

function current_branch {
    git branch 2> /dev/null | grep \* | sed -e s/\*\ \*//;
}

PS1="\u@\h:
\w(\`current_branch\`)> "

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
export HISTTIMEFORMAT="%H:%M:%S > "
export HISTIGNORE="&:bg:fg:ll:h:clear"
export LESSCHARSET='latin1'
export EDITOR=vim
export PGHOST=localhost         # default for postgres
export PAGER=less

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

PS1="\u@\h (\$(date +%H:%M:%S)):
\w\`__git_ps1 '(%s)'\`> "


# ls Aliases
alias ls='ls --color=tty --time-style="+%Y-%m-%d %H:%M:%S"'
alias sl='ls'  # ls Typo
alias ll='ls -l'
alias l='ll'
alias l.='ls -ld .*'
alias li='ls -ilAtr'  # List inodes

# Clear screen aliases
alias cls='clear'
alias clr='clear'

# Other Command Aliases
alias xx='exit'
alias md='mkdir -p'
alias h='history'
alias tf='tail -f'
alias myps='ps -u ${USER} -p user,pid,ppid,pcpu,pmem,args'
alias dq='echo $?'
alias whos='finger'
alias cmpr='diff -y --suppress-common-lines'

# cd Typo Aliases
alias vf='cd'
alias cd='cd'
alias cd..='cd ..'

# Useful Admin ALiases
alias procpu='ps hax -o user | sort | uniq -c | sort -n'
alias viewtar='tar -tvf'
alias viewtargz='tar -ztvf'
alias dc='du -cs * 2> /dev/null | sort -n'
alias dK='du -cs * 2> /dev/null | grep ^[1-9]*[0-9]*[0-9.]*K | sort -n'
alias dM='du -cs * 2> /dev/null | grep ^[1-9]*[0-9]*[0-9.]*M | sort -n'
alias dG='du -cs * 2> /dev/null | grep ^[1-9]*[0-9]*[0-9.]*G | sort -n'
alias dfh='df -Ph | awk "{print \$6, \$5, \$2, \$3, \$4}" | column -t'
alias df='df -P | awk "{print \$6, \$5, \$2, \$3, \$4}" | column -t'


###############################################################################
# PS1 Setup
###############################################################################
# Set Window Title
if [[ "$XTREM" == 'xterm' ]]
then
    INFO='\033]2;'
    INFO+='${USER}@${HOSTNAME}'
    INFO+='\007'

    TITLE=$(print ${INFO})
else
    TITLE=''
fi

# tput Colors
BOLD=$(tput bold)
BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
ORIGINAL=$(tput setaf 9)
RESET=$(tput sgr0)

# Build PS1
PROMPT='${TITLE}'
PROMPT+="${BOLD}"
PROMPT+="${RED}"
PROMPT+='[$?]'
PROMPT+="${WHITE}"
PROMPT+='$(date +"%Y-%m-%d %H:%M:%S")'
PROMPT+="${MAGENTA}"
PROMPT+='${PWD}'
PROMPT+="${GREEN}"
PROMPT+='${LOGIN}@${HOSTNAME}'
PROMPT+='\n'
PROMPT+='# '
PROMPT+="${RESET}"
export PS1=$(print ${PROMPT})

# Alias cd to 'cd' and 'ls'
function c
{
    \cd ${1};
    ls -A;
}

alias cd='c'
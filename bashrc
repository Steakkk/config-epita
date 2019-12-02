[[ $- != *i* ]] && return

export LANG=en_US.utf8
export NNTPSERVER="news.epita.fr"
export EDITOR=vim

export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

alias cdo='cd $OLDPWD'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -AbclFh'
alias l='ls -CF'
alias rm='rm -v'
alias mkdir='mkdir -vp'
alias i3lock='scrot plop.png 
    && convert -scale 10% -scale 1000% plop.png plop.png \
    && composite -compose Over -gravity Center ~/afs/lock/army.jpg plop.png plop.png \
    && i3lock -i plop.png && rm plop.png'
#alias setxkbmap='echo "nique toi"'
alias cc='gcc -Wall -Wextra -Werror -std=c99 -pedantic -g'
alias check_leak='valgrind --leak-check=full --show-leak-kinds=all \
--track-origins=yes --track-fds=yes'

C_BLUE="$(tput setaf 6)"
C_PINK="$(tput setaf 5)"
C_COMMANDE="$(tput setaf 15)"
C_Yellow="$(tput setaf 214)"

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

mkcd(){
    mkdir "$1"
    cd "$1" || exit 1
};

PS1='[\[${C_BLUE}\]\a\[${C_BLUE}\]\u\[${C_PINK}\]@\[${C_BLUE}\]\h \W\
\[${C_COMMANDE}\]] \t\[\[${C_Yellow}\]$(parse_git_branch)\]\n\
\[${C_BLUE}\]>>>\[${C_COMMANDE}\] '
PS2='\[${C_PINK}\]>>> \[${C_COMMANDE}\]'
setxkbmap -option caps:escape

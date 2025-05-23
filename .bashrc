#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias pwfix='faillock --reset'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1='[\u@\h \w]\$ '
PATH="$HOME/.local/share/soar/bin:$PATH"

export GDK_BACKEND=wayland,x11
export GTK_THEME=Breeze:dark
export PATH="$HOME/.local/share/soar/bin:$PATH"

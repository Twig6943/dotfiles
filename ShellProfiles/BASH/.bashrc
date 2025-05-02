#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias fastfetch='fastfetch -l windows'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \w]\$ '
PATH="$HOME/.local/share/soar/bin:$PATH"

export GDK_BACKEND=wayland,x11
export PATH="$HOME/.local/share/soar/bin:$PATH"

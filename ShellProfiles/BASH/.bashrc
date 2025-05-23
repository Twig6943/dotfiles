#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias pwfix='faillock --reset'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Environment variables
export VISUAL=nano
export GDK_BACKEND=wayland,x11
export GTK_THEME=Breeze:dark
export PATH="$HOME/.local/share/soar/bin:$PATH"
export PS1='[\u@\h \w]\$ '
export PATH="$HOME/.local/share/soar/bin:$PATH"

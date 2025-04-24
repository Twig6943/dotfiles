#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
#PS1='[\u@\h \W]\$ '
PATH="$HOME/.local/share/soar/bin:$PATH"

echo -e "Microsoft Windows [Version 6.1.7600]\nCopyright (c) 2009 Microsoft Corporation.  All rights reserved.\n"

export GDK_BACKEND=wayland,x11
export PATH="$HOME/.local/share/soar/bin:$PATH"

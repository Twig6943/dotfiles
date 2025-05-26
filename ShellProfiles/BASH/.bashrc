#
# ~/.bashrc
#

# If not running interactively, don't do anything
force_color_prompt=yes

[[ $- != *i* ]] && return

# Aliases
alias pwfix='faillock --reset'
alias bash_conf_reload='source ~/.bashrc'
alias ls='ls --color=auto'
alias grep='grep --color=auto'



# Environment variables

export PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\] '

# Soar bins
export PATH="$HOME/.local/share/soar/bin:$PATH"

# Actual environment variables
export VISUAL=nano
export GDK_BACKEND=wayland,x11
export GTK_THEME=Breeze:dark



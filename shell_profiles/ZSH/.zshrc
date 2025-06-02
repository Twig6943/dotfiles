#
# ~/.zshrc
#

# Environment variables

# Soar bins
export PATH="$HOME/.local/share/soar/bin:$PATH"

export EDITOR=micro
export VISUAL=micro
export GDK_BACKEND=wayland,x11
export GTK_THEME=Breeze:dark

# Keybinds


# Aliases
# alias micro='flatpak run io.github.zyedidia.micro'
alias pwfix='faillock --reset'
alias bash_conf_reload='source ~/.zshrc'
alias ls='ls --color=auto'
alias nano='nano --line'
alias grep='grep --color=auto'

# Search files in the current folder
alias f="find . | grep "

# Archives
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'

# Extracts any archive(s)
extract () {
  for archive in "$@"; do
    if [[ -f $archive ]]; then
      case $archive in
        *.tar.bz2)   tar xvjf "$archive"    ;;
        *.tar.gz)    tar xvzf "$archive"    ;;
        *.bz2)       bunzip2 "$archive"     ;;
        *.rar)       rar x "$archive"       ;;
        *.gz)        gunzip "$archive"      ;;
        *.tar)       tar xvf "$archive"     ;;
        *.tbz2)      tar xvjf "$archive"    ;;
        *.tgz)       tar xvzf "$archive"    ;;
        *.zip)       unzip "$archive"       ;;
        *.Z)         uncompress "$archive"  ;;
        *.7z)        7z x "$archive"        ;;
        *)           echo "don't know how to extract '$archive'..." ;;
      esac
    else
      echo "'$archive' is not a valid file!"
    fi
  done
}

# If not running interactively, don't do anything
[[ -o interactive ]] || return

# Colors
LIGHTGRAY="%{\033[0;37m%}"
WHITE="%{\033[1;37m%}"
BLACK="%{\033[0;30m%}"
DARKGRAY="%{\033[1;30m%}"
RED="%{\033[0;31m%}"
LIGHTRED="%{\033[1;31m%}"
GREEN="%{\033[0;32m%}"
LIGHTGREEN="%{\033[1;32m%}"
BROWN="%{\033[0;33m%}"
YELLOW="%{\033[1;33m%}"
BLUE="%{\033[0;34m%}"
LIGHTBLUE="%{\033[1;34m%}"
MAGENTA="%{\033[0;35m%}"
LIGHTMAGENTA="%{\033[1;35m%}"
CYAN="%{\033[0;36m%}"
LIGHTCYAN="%{\033[1;36m%}"
NOCOLOR="%{\033[0m%}"

# Prompt with color
if [[ $EUID == 0 ]]; then
  PROMPT='%K{196}%F{255} $ %K{31}%F{196}%K{31}%F{255} %m %K{240}%F{31}%K{240}%F{255} %~ %k%F{240}%f '
else
  PROMPT='%K{100}%F{255} $ %K{31}%F{100}%K{31}%F{255} %n@%m %K{240}%F{31}%K{240}%F{255} %~ %k%F{240}%f '
fi

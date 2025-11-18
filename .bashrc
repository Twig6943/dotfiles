#
# ~/.bashrc
#

# Environment variables

# Paths (Soar,dbin,gem)
export PATH="$HOME/.local/share/soar/bin:$HOME/.local/bin:$HOME/.local/share/gem/ruby/3.4.0/bin:$PATH"

export INPUTRC=$HOME/.inputrc
export EDITOR=micro
export VISUAL=micro
export GDK_BACKEND=wayland,x11
export QT_QPA_PLATFORM=wayland:xcb
#export SDL_VIDEODRIVER=wayland,x11
#export CHROMIUM_USER_FLAGS="--ozone-platform-hint=auto --enable-blink-features=MiddleClickAutoscroll --use-gl=angle --use-angle=swiftshader" # Don't add --disable-gpu as it somewhat works unlike electron
export ELECTRON_OZONE_PLATFORM_HINT=auto
export GTK_THEME=Breeze:dark

# Vi stuff

set -o vi

# Aliases
# alias micro='flatpak run io.github.zyedidia.micro'
alias fkr='fish_key_reader'
alias pwfix='faillock --reset'
alias proton='umu-run'
alias kill_exe='sudo pkill -9 -f "\\.exe"'
alias empty_trash='sudo rm -rf ~/.local/share/Trash/files/* ~/.local/share/Trash/info/*'
alias bash_conf_reload='source ~/.bashrc'
alias ls='ls -f --color=auto'
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


# upload a file to 0x0.st and return the URL
upload() {
    if [ -z "$1" ]; then
        echo "Usage: upload <file>"
        return 1
    fi

    if [ ! -f "$1" ]; then
        echo "Error: '$1' is not a file."
        return 1
    fi

    curl -F "file=@$1" https://0x0.st
}

temp_upload() {
    for file in "$@"; do
        echo "Uploading $file..."
        curl -F "file=@$file" https://temp.sh/upload
        echo
    done
}

# Extracts any archive(s) (if unp isn't installed)
extract () {
	for archive in $*; do
		if [ -f $archive ] ; then
			case $archive in
				*.tar.bz2)   tar xvjf $archive    ;;
				*.tar.gz)    tar xvzf $archive    ;;
				*.bz2)       bunzip2 $archive     ;;
				*.rar)       rar x $archive       ;;
				*.gz)        gunzip $archive      ;;
				*.tar)       tar xvf $archive     ;;
				*.tbz2)      tar xvjf $archive    ;;
				*.tgz)       tar xvzf $archive    ;;
				*.zip)       unzip $archive       ;;
				*.Z)         uncompress $archive  ;;
				*.7z)        7z x $archive        ;;
				*)           echo "don't know how to extract '$archive'..." ;;
			esac
		else
			echo "'$archive' is not a valid file!"
		fi
	done
}

# Colors

if [ "$TERM" = "linux" ]; then
    echo -en "\e]P02d3438" # color 0 (first of pair 1)
    echo -en "\e]P1343b3f" # color 1 (second of pair 1)
    echo -en "\e]P1bc2d41" # color 2 (first of pair 2)
    echo -en "\e]P2e04758" # color 3 (second of pair 2)
    echo -en "\e]P36c834c" # color 4 (first of pair 3)
    echo -en "\e]P4869f61" # color 5 (second of pair 3)
    echo -en "\e]P4b99444" # color 6 (first of pair 4)
    echo -en "\e]P5dab25b" # color 7 (second of pair 4)
    echo -en "\e]P64f9990" # color 8 (first of pair 5)
    echo -en "\e]P764b6ac" # color 9 (second of pair 5)
    echo -en "\e]P7b86790" # color 10 (first of pair 6)
    echo -en "\e]P8d980ad" # color 11 (second of pair 6)
    echo -en "\e]P93a8873" # color 12 (first of pair 7)
    echo -en "\e]PA50a38e" # color 13 (second of pair 7)
    echo -en "\e]PBd3c6aa" # color 14 (first of pair 8)
    echo -en "\e]PCded1b5" # color 15 (second of pair 8)
    clear #for background artifacting
fi


# If not running interactively, don't do anything
force_color_prompt=yes

[[ $- != *i* ]] && return

# Colors
LIGHTGRAY="\033[0;37m"
WHITE="\033[1;37m"
BLACK="\033[0;30m"
DARKGRAY="\033[1;30m"
RED="\033[0;31m"
LIGHTRED="\033[1;31m"
GREEN="\033[0;32m"
LIGHTGREEN="\033[1;32m"
BROWN="\033[0;33m"
YELLOW="\033[1;33m"
BLUE="\033[0;34m"
LIGHTBLUE="\033[1;34m"
MAGENTA="\033[0;35m"
LIGHTMAGENTA="\033[1;35m"
CYAN="\033[0;36m"
LIGHTCYAN="\033[1;36m"
NOCOLOR="\033[0m"


# Using color promt
if [[ ${EUID} == 0 ]] ; then
    PS1='\[\033[48;2;221;75;57;38;2;255;255;255m\] \$ \[\033[48;2;0;135;175;38;2;221;75;57m\]\[\033[48;2;0;135;175;38;2;255;255;255m\] \h \[\033[48;2;83;85;85;38;2;0;135;175m\]\[\033[48;2;83;85;85;38;2;255;255;255m\] \w \[\033[49;38;2;83;85;85m\]\[\033[00m\] '
else
    PS1='\[\033[48;2;105;121;16;38;2;255;255;255m\] \$ \[\033[48;2;0;135;175;38;2;105;121;16m\]\[\033[48;2;0;135;175;38;2;255;255;255m\] \u@\h \[\033[48;2;83;85;85;38;2;0;135;175m\]\[\033[48;2;83;85;85;38;2;255;255;255m\] \w \[\033[49;38;2;83;85;85m\]\[\033[00m\] '
fi

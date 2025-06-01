# ~/.config/fish/config.fish

source ~/.config/fish/conf.d/colors.fish

# Disable fish greeting message
set -g fish_greeting

# Keybinds
bind \cH backward-kill-word 
 
# Environment variables
set -gx PATH $HOME/.local/share/soar/bin $PATH

set -gx EDITOR nano
set -gx VISUAL nano
set -gx GDK_BACKEND wayland,x11
set -gx GTK_THEME Breeze:dark

# Aliases
# alias micro='flatpak run io.github.zyedidia.micro'
alias pwfix='faillock --reset'
alias screensharefix='systemctl --user restart xdg-desktop-portal'
alias fish_conf_reload='source ~/.config/fish/config.fish'
alias ls='ls --color=auto'
alias nano='nano --line'
alias grep='grep --color=auto'

# Search files in the current folder
alias f='find . | grep '

# Archives
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'

# Extract any archive(s) (if unp isn't installed)
function extract
    for archive in $argv
        if test -f $archive
            switch $archive
                case '*.tar.bz2'
                    tar xvjf $archive
                case '*.tar.gz'
                    tar xvzf $archive
                case '*.bz2'
                    bunzip2 $archive
                case '*.rar'
                    rar x $archive
                case '*.gz'
                    gunzip $archive
                case '*.tar'
                    tar xvf $archive
                case '*.tbz2'
                    tar xvjf $archive
                case '*.tgz'
                    tar xvzf $archive
                case '*.zip'
                    unzip $archive
                case '*.Z'
                    uncompress $archive
                case '*.7z'
                    7z x $archive
                case '*'
                    echo "don't know how to extract '$archive'..."
            end
        else
            echo "'$archive' is not a valid file!"
        end
    end
end

# Interactive shell check
# fish does not source config for non-interactive shells by default, so no need for this.

# Prompt customization
function fish_prompt
    set_color cyan
    echo -n (whoami)
    set_color red
    echo -n '@'
    set_color green
    echo -n (hostname)
    set_color magenta
    echo -n ':'
    set_color magenta
    echo -n (prompt_pwd)
    set_color red
    echo -n '$ '
    set_color normal
end

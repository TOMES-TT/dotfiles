if status is-interactive
    # Commands to run in interactive sessions can go here

    # get colors from the current pywal colorscheme
    source ~/.cache/wal/colors.fish


    #git management
    alias github="cd $HOME/dotfiles/; stow */ ; git add ./* ; git commit; git push"

    alias ct="setxkbmap -layout us -variant dvorak -option compose:menu ctrl:swapcaps"
end

#
# aliases
#

# ls
alias a="ls"
alias aa="ls -a"
alias la="ls -lh"
alias ra="ls -R"

# rm
alias tr="trash"

# commands
alias he="helix"
alias nc="mpc update && ncmpcpp"
alias neo="neo -C $HOME/.config/neo/colors"
# alias lf="exec /usr/local/bin/lf-wrap"
alias ff="fastfetch"
# alias --help="--help | less "
# Dunno why this doesn't work but it's a cool idea

# pacman
alias pm="pacman"
alias spm="sudo pacman"
alias pms="pacman -Ss"
alias spms="sudo pacman -S"

# vpn control
alias mvd="mullvad disconnect"
alias mvc="mullvad connect"
alias mvs="mullvad status"
alias tsu="tailscale up"
alias tsd="tailscale down"
alias tss="tailscale status"

# config files
alias bs="helix ~/.config/bspwm/bspwmrc"
alias sx="helix ~/.config/sxhkd/sxhkdrc"
alias hec="helix ~/.config/helix/config.toml"
alias fcf="helix ~/.config/fish/config.fish"
alias xn="helix ~/.xinitrc"
alias rn="ranger"
alias pbc="helix ~/.config/polybar/config.ini"
alias ala="helix ~/.config/alacritty/alacritty.toml"

if status is-interactive
    # Commands to run in interactive sessions can go here

    # get colors from the current pywal colorscheme
    source ~/.cache/wal/colors.fish

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
    alias hx="helix"
    alias nc="mpc update && ncmpcpp"
    alias neo="neo -C $HOME/.config/neo/colors"

    # vpn control
    alias mvd="mullvad disconnect"
    alias mvc="mullvad connect"
    alias mvs="mullvad status"

    # config files
    alias bs="helix ~/.config/bspwm/bspwmrc"
    alias sx="helix ~/.config/sxhkd/sxhkdrc"
    alias hxc="helix ~/.config/helix/config.toml"
    alias fcf="helix ~/.config/fish/config.fish"
    alias xn="helix ~/.xinitrc"
    alias rn="ranger"
    alias pbc="helix ~/.config/polybar/config.ini"
    alias ala="helix ~/.config/alacritty/alacritty.toml"

    #git management
    alias github="cd $HOME/dotfiles/; stow */ ; git add ./* ; git commit; git push"

    alias ct="setxkbmap -layout us -variant dvorak -option compose:menu ctrl:swapcaps"
end

if status is-interactive
    # Commands to run in interactive sessions can go here

    # get colors from the current pywal colorscheme
    cat ~/.cache/wal/sequences &

    # aliases
    alias a="ls"
    alias sa="ls -a"
    alias he="helix"
    alias bs="helix ~/.config/bspwm/bspwmrc"
    alias sx="helix ~/.config/sxhkd/sxhkdrc"
    alias fcf="helix ~/.config/fish/config.fish"
    alias xn="helix ~/.xinitrc"
    alias ra="ranger"
    alias pbc="he ~/.config/polybar/config.ini"
end

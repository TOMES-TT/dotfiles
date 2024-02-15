if status is-interactive
    # Commands to run in interactive sessions can go here

    # get colors from the current pywal colorscheme
    cat ~/.cache/wal/sequences &

    #
    # aliases
    #

    # ls
    alias a="ls"
    alias aa="ls -a"
    alias la="ls -lh"
    alias ra="ls -R"

    # rm
    alias rm="trash"

    #commands
    alias he="helix"

    # config files
    alias bs="helix ~/.config/bspwm/bspwmrc"
    alias sx="helix ~/.config/sxhkd/sxhkdrc"
    alias hec="helix ~/.config/helix/config.toml"
    alias fcf="helix ~/.config/fish/config.fish"
    alias xn="helix ~/.xinitrc"
    alias rn="ranger"
    alias pbc="he ~/.config/polybar/config.ini"

    #git management
    alias github="stow $HOME/dotfiles/*/ && git add $HOME/dotfiles/* && git commit"
end

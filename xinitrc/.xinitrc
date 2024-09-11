#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# set program defaults

export SUDO_EDITOR=helix
export VISUAL=helix
export EDITOR="$VISUAL"
export TRASH_D_DIR="$HOME/.trash"

export GTK_IM_MODULE="fcitx"
export QT_IM_MODULE="fcitx"
export SDL_IM_MODULE="fcitx"
export XMODIFIERS="@im=fcitx"

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

pgrep -x syncthing > /dev/null || syncthing &
# wal -R &
# mullvad connect &
unclutter &
fcitx -d &

# # Set up keyboard layouts and toggle option

setxkbmap -option compose:menu

# Set up monitor orientation and refresh rate
xrandr --newmode "1600x900-60.00"  118.25  1600 1696 1856 2112  900 903 908 934 -hsync +vsync
xrandr --addmode DP-2 1600x900-60.00
# xrandr --output DP-3 --primary --mode 2560x1440 --rate 144 --pos 0x0 --output DP-2 --mode 1600x900-60.00 --pos 2560x312 --output HDMI-1 --mode 1920x1080 --left-of DP-3
xrandr --output DP-1 --off --output DP-2 --mode 1600x900-60.00 --pos 4480x742 --rotate normal --output DP-3 --primary --mode 2560x1440 --pos 1920x0 --rotate normal --output HDMI-1 --mode 1920x1080 --pos 0x944 --rotate normal
xset s off -dpms

# Start bspwm
exec bspwm 

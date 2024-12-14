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
wal -R &
unclutter &
fcitx -d &

# # Set up keyboard layouts and toggle option

setxkbmap -option compose:menu

# Set up monitor orientation and refresh rate
xrandr --output DisplayPort-0 --off --output DisplayPort-1 --off --output DisplayPort-2 --mode 2560x1440 --pos 1920x0 --rotate normal --output HDMI-A-0 --mode 1920x1080 --pos 0x1013 --rotate normal
xset s off -dpms

# set sxhkd shell for performance

export SXHKD_SHELL='/usr/bin/sh'

# Start bspwm
exec bspwm 

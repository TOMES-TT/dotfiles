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

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

syncthing &
# wal -R &
mullvad connect &
unclutter --timeout 10 &

# Set up monitor orientation and refresh rate
xrandr --output DP-3 --primary --mode 2560x1440 --pos 0x0 --output DP-2 --mode 1600x900 --pos 2560x312 &

# Start bspwm
exec bspwm 

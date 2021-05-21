#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.config/keyboard/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps


if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
else
    xrdb -merge $sysresources
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
else
    xmodmap $sysmodmap
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Monitor adjustment
xrandr --output HDMI-1 --left-of VGA-1

exec "$(cat ~/.config/wm)"

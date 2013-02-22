#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

userresources="$HOME/.Xresources"
usermodmap="$HOME/.Xmodmap"
sysresources="/etc/X11/xinit/.Xresources"
sysmodmap="/etc/X11/xinit/.Xmodmap"

[ -f "$sysresources" ] && xrdb -merge $sysresources
[ -f "$userresources" ] && xrdb -merge "$userresources"
[ -f "$sysmodmap" ] && xmodmap $sysmodmap
[ -f "$usermodmap" ] && xmodmap "$usermodmap"

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
	for f in /etc/X11/xinit/xinitrc.d/* ; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

export LANG="zh_CN.UTF-8"

export XMODIFIERS="@im=fcitx"
export GTK_IM_MODULE="fcitx"
export QT_IM_MODULE="fcitx"
fcitx -r &
dropboxd &
keynav &

# exec gnome-session
# exec startkde
# exec startxfce4
#exec openbox-session
#exec awesome
exec i3
#exec herbstluftwm
#exec musca
#exec dwm

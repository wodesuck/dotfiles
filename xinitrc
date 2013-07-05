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

case $1 in
i3)      exec i3 ;;
openbox) exec openbox-session ;;
musca)   exec musca ;;
xmonad)  exec xmonad ;;
evilwm)  exec evilwm -mask1 mod4 ;;
stumpwm) exec ~/project/stumpwm/stumpwm ;;
*)       exec i3 ;;
esac

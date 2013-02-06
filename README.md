# wodesuck's dotfiles

This is a repo for my dotfiles.

## How to use it

**Backup of all your dotfiles in `~` (including `~/.config`)
unless you are sure that they won't be needed anymore.**

Run this:

    git clone https://github.com/wodesuck/dotfiles.git
    cd dotfiles
    make init

Alternatively, you can install only certain config by using
`make vim`, `make zsh`, etc.

This will store the dotfiles in `dotfiles`, and symlink the
appropriate files to your home directory. Once the directory
`dotfiles` had been moved or renamed, you should run the
`make` command to make the symlinks link to the right places.

## Softwares that I use

### Terminal

* [Vim](http://www.vim.org) - a highly configurable, improved
  version of the vi text editor.

  With [Vundle](https://github.com/gmarik/vundle) to manage the plugins.

* [Zsh](http://www.zsh.org) - the last shell you'll ever need.

  With [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) framework.

* [screen](http://www.gnu.org/software/screen) &
  [tmux](http://tmux.sourceforge.net) - terminal multiplexers.
* [ranger](http://ranger.nongnu.org) - a simple, vim-like file manager.
* [MPD](http://mpd.wikia.com/wiki/Music_Player_Daemon_Wiki) - a music
  player server.
* [mpc](http://mpd.wikia.com/wiki/Mpc) - command line interface
  to MPD.

### X Window

* [Musca](http://aerosuidae.net/musca.html) - a simple tiling
  window manager for X.
* [dmenu](http://tools.suckless.org/dmenu) - a dynamic menu for X.
* [xterm](http://invisibe-island.net/xterm) - X terminal emulator.
* [Conky](http://conky.sourceforge.net) - a light-weight system monitor.
* [stanetray](http://stalonetray.sourceforge.net) - a stand-alone
  system tray.
* [dunst](http://knopwob.github.com/dunst) - a dmenu-ish notification system.
* [slock](http://tools.suckless.org/slock) - simple X display locker.
* [keynav](http://www.semicomplete.com/projects/keynav) - ingenious and fast
  way to move the mouse on the screen with keystrokes.
* [fcitx](http://code.google.com/p/fcitx) - a flexible input method framework.

  With [rime](http://code.google.com/p/rimeime) input method engine and
  [fcitx-cloudpinyin](https://github.com/csslayer/fcitx-cloudpinyin).
* [Firefox](http://www.mozilla.org/projects/firefox) - standalone web browser
  from mozzila.org.

  With [Vimperator](http://www.vimperator.org/vimperator).

### Other
* [fbterm](http://code.google.com/p/fbterm) - a fast terminal emulator
  for linux with frame buffer device or VESA video card.

  With [fcitx-fbterm](http://code.google.com/p/fctix) for the input method
  support.

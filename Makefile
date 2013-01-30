.PHONY: init sync vim vundle zsh oh-my-zsh xinit Xresources Xmodmap conky \
	musca stalonetray screen tmux vimperator keynav dunst fcitx \
	fontconfig

init: vim zsh xinit Xresources Xmodmap conky musca stalonetray screen \
	tmux vimperator keynav dunst fcitx fontconfig

sync:
	git pull origin master
	git push origin master

vundle:
	mkdir -p ~/.vim/bundle
	[ -d ~/.vim/bundle/vundle/.git ] || \
		git clone https://github.com/gmarik/vundle.git \
		~/.vim/bundle/vundle

vim: vundle
	ln -fs `pwd`/vimrc ~/.vimrc
	ln -fs `pwd`/vimrc_mini ~/.vimrc_mini
	rm -rf ~/.vim/ftplugin
	ln -fs `pwd`/vim/ftplugin ~/.vim
	vim -c 'execute "BundleInstall" | q | q'

oh-my-zsh:
	[ -d ~/.oh-my-zsh/.git ] || \
		git clone git://github.com/robbyrussell/oh-my-zsh.git \
		~/.oh-my-zsh

zsh: oh-my-zsh
	ln -fs `pwd`/zshrc ~/.zshrc
	rm -rf ~/.oh-my-zsh/custom
	ln -fs `pwd`/oh-my-zsh/custom ~/.oh-my-zsh

xinit:
	ln -fs `pwd`/xinitrc ~/.xinitrc

Xresources:
	ln -fs `pwd`/Xresources ~/.Xresources

Xmodmap:
	ln -fs `pwd`/Xmodmap ~/.Xmodmap

conky:
	ln -fs `pwd`/conkyrc ~/.conkyrc

musca:
	ln -fs `pwd`/musca_start ~/.musca_start

stalonetray:
	ln -fs `pwd`/stalonetrayrc ~/.stalonetrayrc

screen:
	ln -fs `pwd`/screenrc ~/.screenrc

tmux:
	ln -fs `pwd`/tmux.conf ~/.tmux.conf

vimperator:
	ln -fs `pwd`/vimperatorrc ~/.vimperatorrc
	rm -rf ~/.vimperator
	ln -fs `pwd`/vimperator ~/.vimperator

keynav:
	ln -fs `pwd`/keynavrc ~/.keynavrc

dunst:
	mkdir -p ~/.config/dunst
	ln -fs `pwd`/dunst/dunstrc ~/.config/dunst/dunstrc

fcitx:
	mkdir -p ~/.config/fcitx/rime
	ln -fs `pwd`/fcitx/config ~/.config/fcitx
	ln -fs `pwd`/fcitx/rime/default.custom.yaml \
		~/.config/fcitx/rime

fontconfig:
	mkdir -p ~/.config/fontconfig
	ln -fs `pwd`/fontconfig/fonts.conf ~/.config/fontconfig

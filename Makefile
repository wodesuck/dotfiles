.PHONY: init sync vim vundle zsh oh-my-zsh xinit

init: vim zsh xinit

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

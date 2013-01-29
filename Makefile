init:
	mkdir -p ~/.vim
	ln -fs `pwd`/vim/ftplugin ~/.vim
	ln -fs `pwd`/vimrc ~/.vimrc
sync:
	git pull
	git push

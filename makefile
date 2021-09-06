PREFIX = ~

install:
	cp -f dotfiles/.bashrc ${PREFIX}/.bashrc
	source ${PREFIX}/.bashrc
	cp -f dotfiles/.dircolors ${PREFIX}/.dircolors
	cp -f dotfiles/.nanorc ${PREFIX}/.nanorc
	cp -f dotfiles/.xbindkeysrc ${PREFIX}/.xbindkeysrc
	cp -f dotfiles/.xinitrc ${PREFIX}/.xinitrc
	cp -f dotfiles/.Xresources ${PREFIX}/.Xresources

uninstall:
	rm ${PREFIX}/.bashrc
	rm ${PREFIX}/.dircolors
	rm ${PREFIX}/.nanorc
	rm ${PREFIX}/.xbindkeysrc
	rm ${PREFIX}/.xinitrc
	rm ${PREFIX}/.Xresources

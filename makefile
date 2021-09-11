PREFIX = ~

install:
	cp -f dotfiles/.bashrc ${PREFIX}/.bashrc
	source ${PREFIX}/.bashrc
	cp -f dotfiles/.dircolors ${PREFIX}/.dircolors
	cp -f dotfiles/.nanorc ${PREFIX}/.nanorc
	cp -f dotfiles/.xbindkeysrc ${PREFIX}/.xbindkeysrc
	cp -f dotfiles/.xinitrc ${PREFIX}/.xinitrc
	cp -f dotfiles/.Xresources ${PREFIX}/.Xresources
	mkdir -p ${PREFIX}/.config/dunst
	cp -f dotfiles/dunstrc ${PREFIX}/.config/dunst/dunstrc
	mkdir -p ${PREFIX}/.automatyka
	cp -rf automatyka/* ${PREFIX}/.automatyka

uninstall:
	rm ${PREFIX}/.bashrc
	rm ${PREFIX}/.dircolors
	rm ${PREFIX}/.nanorc
	rm ${PREFIX}/.xbindkeysrc
	rm ${PREFIX}/.xinitrc
	rm ${PREFIX}/.Xresources
	rm -rf ${PREFIX}/.config/dunst
	rm -rf ${PREFIX}/.automatyka
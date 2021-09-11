PREFIX = ~
XORG_PREFIX = /etc/X11/xorg.conf.d

install:
	cp -f dotfiles/.bashrc ${PREFIX}/.bashrc
	source ${PREFIX}/.bashrc
	cp -f dotfiles/.dircolors ${PREFIX}/.dircolors
	cp -f dotfiles/.nanorc ${PREFIX}/.nanorc
	cp -f dotfiles/.xbindkeysrc ${PREFIX}/.xbindkeysrc
	cp -f dotfiles/.xinitrc ${PREFIX}/.xinitrc
	cp -f dotfiles/.Xresources ${PREFIX}/.Xresources
	cp -f dotfiles/.pam_environment ${PREFIX}/.pam_environment
	mkdir -p ${PREFIX}/.config/dunst
	cp -f dotfiles/dunstrc ${PREFIX}/.config/dunst/dunstrc
	mkdir -p ${PREFIX}/.automatyka
	cp -rf automatyka/* ${PREFIX}/.automatyka

xorg:
	cp -f dotfiles/xorg/10-keyboard.conf ${XORG_PREFIX}/10-keyboard.conf
	cp -f dotfiles/xorg/50-mouse-acceleration.conf ${XORG_PREFIX}/50-mouse-acceleration.conf
	cp -f dotfiles/xorg/50-mouse-deceleration.conf ${XORG_PREFIX}/50-mouse-deceleration.conf
	cp -f dotfiles/xorg/50-synaptics.conf ${XORG_PREFIX}/50-synaptics.conf

uninstall:
	rm ${PREFIX}/.bashrc
	rm ${PREFIX}/.dircolors
	rm ${PREFIX}/.nanorc
	rm ${PREFIX}/.xbindkeysrc
	rm ${PREFIX}/.xinitrc
	rm ${PREFIX}/.Xresources
	rm ${PREFIX}/.pam_environment
	rm -rf ${PREFIX}/.config/dunst
	rm -rf ${PREFIX}/.automatyka

xorg_uninstall:
	rm ${XORG_PREFIX}/10-keyboard.conf
	cp ${XORG_PREFIX}/50-mouse-acceleration.conf
	cp ${XORG_PREFIX}/50-mouse-deceleration.conf
	cp ${XORG_PREFIX}/50-synaptics.conf

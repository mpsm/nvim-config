#!/bin/sh -x

ROOT_PATH="$(realpath $(dirname $0)/..)"

DEIN_PLUGIN_DIR=~/.cache/dein
DEIN_INSTALL_DIR="${DEIN_PLUGIN_DIR}/repos/github.com/Shougo/dein.vim"

# main config 
if [ ! -d  ~/.config/nvim ]; then
	echo -n ">>> No NVIM configuration found: "
	if [ -d ${ROOT_PATH}/.git ]; then
		echo "linking to the cloned repo."
		ln -s ${ROOT_PATH} ~/.config/nvim
	else
		echo "cloning configuration repo."
		git clone https://github.com/mpsm/nvim-config ~/.config/nvim
	fi
fi

# dein install
if [ -e "$DEIN_INSTALL_DIR" ]; then
	echo ">>> \"$DEIN_INSTALL_DIR\" already exists!"
else
	echo ">>> Installing dein to \"$DEIN_INSTALL_DIR\"..."
	mkdir -p "$DEIN_PLUGIN_DIR"
	git clone https://github.com/Shougo/dein.vim "$DEIN_INSTALL_DIR"
	echo "Done installing dein."
fi


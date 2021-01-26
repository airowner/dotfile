#!/bin/bash

path=$(cd $(dirname $0); pwd)

sudo pacman -Sy powerline \
	yaourt \
	ctags \
	cscope \
	fzf \
	yq jq hq \
	the_silver_searcher \
	jemalloc \
	tree \
	ntfs-3g \
	zsh-autosuggestions \
	zsh-completions \
	zsh-syntax-highlighting \
	zsh-theme-powerlevel10k \
	zsh-pure-prompt 


# install shell env
$path/install.sh

source $HOME/.zshrc

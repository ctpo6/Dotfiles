#!/usr/bin/env bash

if [ -f ~/.bash_aliases ]; then
	cp -f ~/.bash_aliases ~/.bash_aliases.old
fi
ln -sf $(pwd)/bash_aliases ~/.bash_aliases

if [ -f ~/.bash_aliases ]; then
	cp -f ~/.bashrc ~/.bashrc.old
fi
ln -sf $(pwd)/bashrc ~/.bashrc

if [ -f ~/.tmux.conf ]; then
	rm -f ~/.tmux.conf
fi
ln -s $(pwd)/tmux.conf ~/.tmux.conf

if [ -d ~/.tmuxinator ]; then
	rm -rf ~/.tmuxinator
fi
ln -s $(pwd)/tmuxinator ~/.tmuxinator

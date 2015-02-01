#!/bin/bash

if [ -f ~/.bash_aliases ]; then
	cp -f ~/.bash_aliases ~/.bash_aliases.old
fi

if [ -f ~/.bash_aliases ]; then
	cp -f ~/.bashrc ~/.bashrc.old
fi

ln -sf $(pwd)/bash_aliases ~/.bash_aliases
ln -sf $(pwd)/bashrc ~/.bashrc

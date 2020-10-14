#!/bin/bash
git config --global core.hooksPath ~/.dotfiles/git-hooks
ln -sfv ~/.dotfiles/home/.gitconfig ~
ln -sfv ~/.dotfiles/home/.gitignore_global ~
ln -sfv ~/.dotfiles/home/.vimrc ~
ln -sfv ~/.dotfiles/home/.zshrc ~
ln -sfv ~/.dotfiles/home/.tmux.conf ~
git config --global core.excludesFile '~/.gitignore_global'

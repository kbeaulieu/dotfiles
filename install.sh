#!/usr/bin/env bash

echo "Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Executing brew bundle"
brew bundle

echo "Installing dotfiles"
stow bin asdf fish git sublime alacritty tldr tmux vim ssh gpg chunkwm skhd

echo "Installing asdf tools"
(cd ~ && asdf intall)


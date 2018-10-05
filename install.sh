#!/usr/bin/env bash

echo "Installing brew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Executing brew bundle"
brew bundle

echo "Installing dotfiles"
stow asdf fish git sublime terminal tldr tmux vim ssh gpg

echo "Installing asdf tools"
(cd ~ && asdf intall)

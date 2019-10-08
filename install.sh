#!/usr/bin/env bash

echo "Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Executing brew bundle"
brew bundle

echo "Installing Plug.kak"
mkdir -p ~/.config/kak/plugins/
git clone https://github.com/andreyorst/plug.kak.git ~/.config/kak/plugins/plug.kak

echo "Installing dotfiles"
stow $(ls -d */)

echo "Installing asdf tools"
(cd ~ && asdf intall)

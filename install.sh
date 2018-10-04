#!/usr/bin/env bash

echo "Installing brew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing git"
brew install git

read -rsn1 -p"Restor private ssh keys and press any key to continue";echo

echo "Cloning dotfiles repo"
git clone https://github.com/kbeaulieu/dotfiles.git ~/.gitignore
cd ~/.gitignore

echo "Executing brew bundle"
brew bundle

echo "Installing dotfiles"
stow asdf fish git sublime terminal tldr tmux vim ssh

echo "Installing asdf tools"
(cd ~ && asdf intall)

echo "In '/etc/shells', add '/usr/local/bin/fish', then 'chsh -s /usr/local/bin/fish'"
echo "Open new shell session with fish then run 'fisher up' to install plugins"

# TODO:
# 	skhd
# 	chunkwm


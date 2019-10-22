#!/usr/bin/env bash

### Homebrew ###
echo -e "🍺 Homebrew"
brew bundle dump --force

### Globals ###
globalFile=./global-deps.txt
gnpm="🐻 npm"
gyarn="🧶 yarn"
gpip3="🐍 pip3"
gcargo="🚢 cargo"

echo -e "$gnpm"
echo -e "$gnpm" > $globalFile
npm list -g >> $globalFile

echo -e "$gyarn"
echo -e "\n$gyarn" >> $globalFile
yarn global list >> $globalFile

echo -e "$ggem"
echo -e "\n\n$ggem" >> $globalFile
gem list >> $globalFile

echo -e "$gpip3"
echo -e "\n\n$gpip3" >> $globalFile
pip3 list --not-required >> $globalFile

echo -e "$gcargo"
echo -e "\n\n$gcargo" >> $globalFile
cargo install --list >> $globalFile

#!/usr/bin/env bash

### Homebrew ###
echo -e "🍺 Homebrew"
brew bundle dump --force

### Globals ###
globalFile=./global-deps.txt
gnpm="🐻 npm"
gyarn="🧶  yarn"
ggem="💎 gem"
gpip="🐍 pip"
gpip3="🐍 pip3"

echo -e "\n\n$gnpm"
echo -e "$gnpm" > $globalFile
npm list -g >> $globalFile

echo -e "\n\n$gyarn"
echo -e "\n\n$gyarn" >> $globalFile
yarn global list >> $globalFile

echo -e "\n\n$ggem"
echo -e "\n\n$ggem" >> $globalFile
gem list >> $globalFile

echo -e "\n\n$gpip"
echo -e "\n\n$gpip" >> $globalFile
pip list --not-required >> $globalFile

echo -e "\n\n$gpip3"
echo -e "\n\n$gpip3" >> $globalFile
pip3 list --not-required >> $globalFile

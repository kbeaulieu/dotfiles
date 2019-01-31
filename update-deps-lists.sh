#!/usr/bin/env bash

echo "🍺 Homebrew"
brew bundle dump --force

echo "🐻 npm"
npm list -g > ./global-packages/npm-global.deps.txt
echo "🧶 yarn"
yarn global list > ./global-packages/yarn-global.deps.txt
echo "💎 gem"
gem list > ./global-packages/gem.deps.txt
echo "🐍 pip"
pip list --not-required > ./global-packages/pip.deps.txt
echo "🐍🐍🐍 pip3"
pip3 list --not-required > ./global-packages/pip3.deps.txt

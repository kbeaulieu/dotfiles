#!/usr/bin/env bash

brew bundle dump --force

npm list -g > npm-global.deps.txt
yarn global list > yarn-global.deps.txt
gem list > gem.deps.txt
pip list --not-required > pip.deps.txt
pip3 list --not-required > pip3.deps.txt


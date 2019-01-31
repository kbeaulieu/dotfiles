#!/usr/bin/env bash

brew bundle dump --force

npm list -g > ./global-packages/npm-global.deps.txt
yarn global list > ./global-packages/yarn-global.deps.txt
gem list > ./global-packages/gem.deps.txt
pip list --not-required > ./global-packages/pip.deps.txt
pip3 list --not-required > ./global-packages/pip3.deps.txt

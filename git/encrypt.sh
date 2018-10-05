#!/usr/bin/env bash

rm .*.asc 2> /dev/null
gpg -ea .gitconfig.arcbees
gpg -ea .gitconfig.kronos
gpg -ea .gitconfig.personal

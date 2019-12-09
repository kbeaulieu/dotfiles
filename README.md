# My Dotfiles

## Setup on a new machine
1. Download this repo in ~/.dotfiles
1. Execute `install.sh`
1. Restore private ssh keys
1. Restore private gpg keys
1. Add `/usr/local/bin/fish` in `/etc/shells` then run `chsh -s /usr/local/bin/fish`
1. Look if there is something useful in `global-deps.txt`

## Todo
- Sublime Text
- VSCode
    - ~/Library/Application Support/Code/Users/{*.json,snippets/*}
    - `code --list-extensions | xargs -L 1 echo code --install-extension > install-code-ext.sh` ??
- Other desktop app preferences in `~/Library/Preferences/`?
- .osx (see Paul Irish dotfiles)
- Global haskell packages: `stack exec ghc-pkg -- list` (hlint, hoogle, idrin, ghcide, ...)

## Useful Links
- [webpro/awesome-dotfiles](https://github.com/webpro/awesome-dotfiles)
- [https://dotfiles.github.io/](https://dotfiles.github.io/)
- [paulirish/dotfiles](https://github.com/paulirish/dotfiles)
 
## Manually installed apps
- Ableton Live
- Antidote
- Haskell for mac
- Irvue
- Pocket
- SnippetsLab (migrate to md files)

## Manual backup
### Firefox
- FirefoxColor : localStorage
- /Users/kevenbeaulieu/Library/Application Support/Firefox/Profiles/dysns4ag.dev-edition-default
    - containers.json

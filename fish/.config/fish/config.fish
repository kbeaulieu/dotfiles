set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
if not functions -q fisher
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# PATH
set PATH \
    ~/.local/bin \
    ~/.config/yarn/global/node_modules/.bin \
    $PATH

# Global env
set -gx EDITOR kak
set -gx JAVA_HOME /Users/kevenbeaulieu/.asdf/installs/java/openjdk-11.0.1/Contents/Home
# set -gx IDRIS_LIBRARY_PATH (asdf where idris)/share/x86_64-osx-ghc-8.6.3/idris-1.3.2/libs

# Fish
## Configs
set -g fish_prompt_pwd_dir_length 0 # Disable shortening prompt pwd
set -g fish_greeting ""

# asdf-vm
source /usr/local/opt/asdf/asdf.fish

# Direnv
direnv hook fish | source

# Modules
set -x FISH_HOME ~/.config/fish
source $FISH_HOME/key-bindings.fish
source $FISH_HOME/secrets.fish
source $FISH_HOME/utils.fish
source $FISH_HOME/gnu.fish
source $FISH_HOME/git.fish
source $FISH_HOME/prompt-small.fish
source $FISH_HOME/equisoft.fish

###
# Loads fisher plugins
# Installs fisher if not installed
set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
if not functions -q fisher
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end


###
# Set global env
set PATH \
    ~/.local/bin \
    ~/.config/yarn/global/node_modules/.bin \
    $PATH
set -gx EDITOR kak
set -gx JAVA_HOME /Users/kevenbeaulieu/.asdf/installs/java/openjdk-11.0.1/Contents/Home
set -gx IDRIS_LIBRARY_PATH /usr/local/Cellar/idris/1.3.2/share/x86_64-osx-ghc-8.6.5/idris-1.3.2/libs
# fzf
set -U FZF_ENABLE_OPEN_PREVIEW 1
set -U FZF_PREVIEW_FILE_CMD "bat --color=always --style=numbers --line-range :300"
set -U FZF_DEFAULT_COMMAND "fd --type f --hidden --exclude .git"
set -U FZF_FIND_FILE_COMMAND "fd --type f --hidden --exclude .git"
set -U FZF_OPEN_COMMAND "fd --type f --hidden --exclude .git"
# Customs
set -gx MARKDOWN_VIEWER mdcat
set -gx KAK_SESSION default


###
# Fish config
set -g fish_prompt_pwd_dir_length 0 # Disable shortening prompt pwd
set -g fish_greeting ""


###
# Other sources
source /usr/local/opt/asdf/asdf.fish
direnv hook fish | source
for i in (command ls $__fish_config_dir/modules/*.fish)
    source $i
end

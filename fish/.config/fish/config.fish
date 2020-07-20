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
    $HOME/.local/bin \
    $HOME/.config/yarn/global/node_modules/.bin \
    $HOME/.cargo/bin \
    /usr/local/bin \
    $PATH
set -gx EDITOR kak
asdf current java 2>&1 > /dev/null
if test $status -eq 0
    set -x JAVA_HOME (dirname (dirname (asdf which java)))
end
set -gx IDRIS_LIBRARY_PATH /usr/local/Cellar/idris/1.3.2/share/x86_64-osx-ghc-8.6.5/idris-1.3.2/libs
# fzf
set -U FZF_ENABLE_OPEN_PREVIEW 1
set -U FZF_PREVIEW_FILE_CMD "bat --color=always --style=numbers --line-range :300"
set -U FZF_DEFAULT_COMMAND "fd --type f --hidden --exclude .git"
set -U FZF_FIND_FILE_COMMAND "fd --type f --hidden --exclude .git"
set -U FZF_OPEN_COMMAND "fd --type f --hidden --exclude .git"
set -u FZF_DEFAULT_OPTS "--height 40"
# Customs
set -gx MARKDOWN_VIEWER mdcat
set -gx KAK_SESSION default
set -gx PROJECT_HOME ~


###
# Fish config
set -g fish_prompt_pwd_dir_length 0 # Disable shortening prompt pwd
set -g fish_greeting ""


###
# Other sources
source /usr/local/opt/asdf/asdf.fish
eval (direnv hook fish)
for i in (command ls $__fish_config_dir/modules/*.fish)
    source $i
end


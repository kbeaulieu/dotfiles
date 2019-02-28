if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# PATH
export PATH="/Users/kevenbeaulieu/.local/bin:$PATH"
export PATH="/Users/kevenbeaulieu/.config/yarn/global/node_modules/.bin:$PATH"

# Global env
export EDITOR=vim
export JAVA_HOME=/Users/kevenbeaulieu/.asdf/installs/java/oracle-8.191 # /openjdk-11.0.1/Contents/Home

# Fish
## Disable shortening prompt pwd
set -g fish_prompt_pwd_dir_length 0
set -g fish_greeting "><>"

# asdf-vm
source /usr/local/opt/asdf/asdf.fish

# Modules
set -x FISH_HOME ~/.config/fish
source $FISH_HOME/secrets.fish
source $FISH_HOME/git.fish
source $FISH_HOME/gnu.fish
source $FISH_HOME/utils.fish
source $FISH_HOME/prompt-small.fish

# Kronos
export PATH="$PATH:$HOME/bin"
alias php "/usr/local/opt/php@5.6/bin/php"
export PATH="/usr/local/opt/php@5.6/bin:$PATH"
export PATH="/usr/local/opt/php@5.6/sbin:$PATH"

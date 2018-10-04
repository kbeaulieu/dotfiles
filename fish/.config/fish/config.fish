if not test -f ~/.config/fish/functions/fisher.fish
	curl -sLo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
	fisher
end

export EDITOR=vim

source /usr/local/opt/asdf/asdf.fish
export JAVA_HOME=(asdf where java (asdf current java | gsed -e 's|\(.*\) \?(.*|\1|g'))

set -x FISH_HOME ~/.config/fish
source $FISH_HOME/git.fish
source $FISH_HOME/gnu.fish
source $FISH_HOME/utils.fish

# Disable shortening prompt pwd
set -g fish_prompt_pwd_dir_length 0 

# Kronos
export PATH="$PATH:$HOME/bin"
alias php "/usr/local/opt/php@5.6/bin/php"
export PATH="/usr/local/opt/php@5.6/bin:$PATH"
export PATH="/usr/local/opt/php@5.6/sbin:$PATH"


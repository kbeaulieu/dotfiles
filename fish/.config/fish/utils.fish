# Misc
abbr -g cd.. 'cd ../'
abbr -g cd... 'cd ../../'
abbr -g cd.... 'cd ../../../'
abbr -g cd..... 'cd ../../../../'
abbr l 'ls -la'
alias cdr 'ranger --choosedir $HOME/.rangerdir; LASTDIR `cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias tvim 'set TERM screen-256color; /usr/local/bin/vim'
alias mdv 'mdv -t 665.9171 -T 665.9171'

# Fish
alias frc 'vim ~/.config/fish/config.fish; and source ~/.config/fish/config.fish'
alias efrc 'subl ~/.config/fish'
alias sfrc 'source ~/.config/fish/config.fish'

# Abbreviations
abbr -g mux tmuxinator
abbr -g dk docker
abbr -g dc docker-compose
abbr -g dpg "docker run --label pg -it"
abbr -g dppg "docker container prune --filter=\"label=pg\""
abbr -g kc kubectl
abbr -g gw "./gradlew"
abbr -g ugw "./gradlew wrapper --gradle-version"
abbr -g jp jump
abbr -g tf terraform

# fzf
set -U FZF_ENABLE_OPEN_PREVIEW 1
set -U FZF_PREVIEW_FILE_CMD "bat --color=always --style=numbers --line-range :300"
set -U FZF_DEFAULT_COMMAND "fd --type f --hidden --exclude .git"
set -U FZF_FIND_FILE_COMMAND "fd --type f --hidden --exclude .git"
set -U FZF_OPEN_COMMAND "fd --type f --hidden --exclude .git"

function get_port_pid
    lsof -n -i:$argv[1] | sed -n 2p | awk '{ print $2 }'
end

function htop_port
    htop -p (get_port_pid $argv[1])
end

function kill_port
    kill $argv[2..10] (get_port_pid $argv[1])
end


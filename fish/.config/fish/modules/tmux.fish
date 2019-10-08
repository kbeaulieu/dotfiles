function tmux --wraps tmux
    extend_command tmux $argv
end

###
# Wrap tmuxinator start command
function tmux-start-session
    tmuxinator start $argv[1]
end

set -l start_session "start-session"
complete -c tmux -n "__fish_use_subcommand" -a $start_session -d "tmuxinator start SESSION_NAME"
complete -c tmux -n "__fish_seen_subcommand_from $start_session" -a "(tmuxinator completions start)" -f

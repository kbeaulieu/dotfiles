abbr -g dk docker
abbr -g dc docker-compose

function docker --wraps docker
    extend_command docker $argv
end

function docker-pg --description "run with `docker pg alpine`"
    docker run --label pg -it $argv
end

function docker-prune-pg --description "run with `docker prune-pg`"
    docker container prune --filter="label=pg"
end

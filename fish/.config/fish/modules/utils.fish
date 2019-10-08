abbr -g kc kubectl
abbr -g gw "./gradlew"
abbr -g jp jump
abbr -g tf terraform


###
# Source fish rc file
function sfrc
    source $__fish_config_dir/config.fish
    if test -e .envrc
    	direnv reload
    end
end


###
# cd shortcuts
abbr -g cd.. 'cd ../'
abbr -g cd... 'cd ../../'
abbr -g cd.... 'cd ../../../'
abbr -g cd..... 'cd ../../../../'
alias cdr 'ranger --choosedir $HOME/.rangerdir; LASTDIR `cat $HOME/.rangerdir`; cd "$LASTDIR"'


###
# ls with the exa command
# https://the.exa.website/
set -g EXA_DEFAULTS '-a --group-directories-first'
function l --wraps exa
    eval {exa -l $EXA_DEFAULTS} $argv
end

function lg --wraps exa
    eval {exa -lG $EXA_DEFAULTS} $argv
end

function lt --wraps exa
    eval {exa -lT -L=$argv[1] $EXA_DEFAULTS} $argv[2..-1]
end


###
# Custom commands for Docker (like git)
# Create a `docker-foo` executable file available in your $PATH, a function or an alias
# Than execute it with `docker foo`
function extend_command
    set prog $argv[1]
    set cmd $argv[2]
    set bin $prog-$cmd

    if type -q $bin
        set -l extended_command $bin $argv[3..-1]

        if contains -- "--debug-extended-command" $argv
            echo "extended command: " $extended_command
            type $bin
        end

        eval $extended_command
    else
        command $prog $cmd
    end
end

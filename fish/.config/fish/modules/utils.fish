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
abbr -g cd...... 'cd ../../../../../'
alias cdr 'ranger --choosedir $HOME/.rangerdir; LASTDIR `cat $HOME/.rangerdir`; cd "$LASTDIR"'
function cdp -d "cd to PROJECT_HOME directory which is usually defined in a .envrc file at the root of a project"
    cd $PROJECT_HOME
end


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

function lt --wraps exa -a depth
    eval {exa -lT -L=$depth $EXA_DEFAULTS} $argv[2..-1]
end

function l1 --wraps exa
    eval {exa -1 $EXA_DEFAULTS} $argv
end


###
# Extends any program with custom commands (like git)
# Example with Docker:
#     Create a wrapping function for docker:
#         function docker --wraps docker
#             extend_command docker $argv
#         end
#     Create a `docker-foo` executable file available in your $PATH, a function or an alias:
#         function docker-foo
#             echo bar
#         end
#     Than execute it with `docker foo`
function extend_command
    set prog $argv[1]
    set cmd $argv[2]
    set bin $prog-$cmd
    set remaining_args $argv[3..-1]

    if type -q $bin
        set -l extended_command $bin $argv[3..-1]

        if contains -- "--debug-extended-command" $argv
            echo "extended command: " $extended_command
            type $bin
        end

        eval $extended_command
    else
        command $prog $cmd $remaining_args
    end
end


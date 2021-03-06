abbr -g b brew
abbr -g kc kubectl
abbr -g gw "./gradlew"
abbr -g jp jump
abbr -g tf terraform

alias bat "bat --theme TwoDark"

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

function rm_dss
    find . -name '.DS_Store' -type f -delete
end
function ignore_node_modules
    find . -type d -name "node_modules" -exec touch "{}/.metadata_never_index" \;
end

###
# ls with the exa command
# https://the.exa.website/
set -g EXA_DEFAULTS '-a --group-directories-first'
function l --wraps exa
    eval {exa -lg $EXA_DEFAULTS} $argv
end

function lg --wraps exa
    eval {exa -lgG $EXA_DEFAULTS} $argv
end

function lt --wraps exa -a depth
    eval {exa -lgT -L=$depth $EXA_DEFAULTS} $argv[2..-1]
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
    set -l prog $argv[1]
    set -l cmd $argv[2]
    set -l bin $prog-$cmd
    set -l remaining_args $argv[3..-1]

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

###
# asdf
function asdf-list -a package
    cd
    echo Available versions for $package
    asdf list-all $package | tail -n 15
    echo Current versions for $package
    asdf list $package
    cd -
end

function asdf-upgrade -a package old_version new_version
    cd
    echo installing $package=$new_version
    asdf install $package $new_version
    echo setting global $package=$new_version
    asdf global $package $new_version
    echo uninstalling $package=$old_version
    asdf uninstall $package $old_version
    echo done
    cd -
end


###
# Time management
function restin -a duration
    echo display_move | at now + $duration minutes
end

function display_move
    osascript -e 'display alert "Move!"'
end

###
# Shows command's path and realpath
function whichrp -a cmd_name
    paste (which -a $cmd_name | psub) (realpath (which -a $cmd_name) | psub)
end

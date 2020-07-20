set -g wiki_folder ~/dev/learning-resources/src/

function wiki -d "Edit, view or create a personal wiki file"
    set -l cmd $EDITOR
    set -l file ""

    for option in $argv
        switch "$option"
            case -r --render
                set cmd $MARKDOWN_VIEWER
            case \*
                set file $option
        end
    end

    command $cmd $wiki_folder/$file
end

complete -c wiki -f -a "(command ls $wiki_folder)"

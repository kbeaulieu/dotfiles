set -g wiki_folder ~/dev/learning-resources/src/

function wiki -d "Edit, view or create a personal wiki file"
    set cmd $EDITOR
    set file ""

    for option in $argv
        switch "$option"
            case -r --render
                set cmd $MARKDOWN_VIEWER
            case \*
                set file $option
        end
    end

    $cmd $wiki_folder/$file
end

complete -c wiki -f -a "(command ls $wiki_folder)"

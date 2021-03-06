abbr -g g git

###
# Git repl
# `--shell` (enable `completion`) combined with `-c git ` (prefix every prompt with git) provides decent auto-completion
function gitrepl
    while read --shell -c "git " -p "echo 'git('(git_branch_name)') > '" -la line
        eval $line
    end
end

function git-awip-fp
    git awip

    read -p "Wanna push --force ? (yes): " choice

    switch $choice
        case "yes"
            echo "Force pushing"
            git push --force
        case *
            echo "Skipping force push"
    end
end

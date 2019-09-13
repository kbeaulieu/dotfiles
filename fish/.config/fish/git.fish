function _current_branch
  echo (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
end

if set -q fish_initialized
    set -U fish_initialized

    abbr g git
    abbr ga "git add"
    abbr gaa "git add --all"

    abbr gb "git branch"
    abbr gba "git branch -a"
    abbr ggsup "git branch --set-upstream-to=origin/(_current_branch)"

    abbr gc "git commit"
    abbr gca "git commit -a"
    abbr gc! "git commit --amend"
    abbr gca! "git commit -a --amend"
    abbr gcn! "git commit --no-edit --amend"
    abbr gcan! "git commit -a --no-edit --amend"

    abbr gco "git checkout"
    abbr gcb "git checkout -b"

    abbr gd "git diff"
    abbr gdc "git diff --cached"
    abbr gdt "icdiff -s"
    abbr gdtc "icdiff -s --cached"
    abbr gwd "git webdiff"
    abbr gwdc "git webdiff --cached"

    abbr gfa "git fetch --all --prune"
    abbr gfo "git fetch origin"

    abbr gl "git pull"
    abbr ggpull "git pull origin (_current_branch)"
    abbr gup "git pull --rebase"
    abbr glrom "git pull --rebase origin master"

    abbr gp "git push"
    abbr ggpush "git push origin (_current_branch)"
    abbr gpsup "git push --set-upstream origin (_current_branch)"

    abbr gignore "git update-index --assume-unchanged"
    abbr gignored 'git ls-files -v | grep "^[[:lower:]]"'

    abbr glg "git log --stat --color"
    abbr glgp "git log --stat --color -p"
    abbr glgg "git log --graph --color"
    abbr glgga "git log --graph --decorate --all"
    abbr glgm "git log --graph --max-count=10"
    abbr glo "git log --oneline --decorate --color"
    abbr glol "git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
    abbr glola "git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
    abbr glog "git log --oneline --decorate --color --graph"
    abbr gloga "git log --oneline --decorate --color --graph --all"
    abbr glogas "git log --oneline --decorate --color --graph --all --exclude=refs/stash"

    abbr gwch "git whatchanged -p --abbrev-commit --pretty=medium"

    abbr grb "git rebase"
    abbr grba "git rebase --abort"
    abbr grbc "git rebase --continue"
    abbr grbi "git rebase -i"
    abbr grbm "git rebase master"
    abbr grbim "git rebase -i master"

    abbr gr "git reset"

    abbr gst "git status"
    abbr gss "git status -s"
    abbr gsb "git status -sb"

    abbr gsps "git show --pretty=short --show-signature"
    abbr gsf "git show --name-status --oneline"
end

alias gwip 'git add -A; git rm (git ls-files --deleted) 2> /dev/null; git commit -m "--wip--"'
function gunwip
  git log -n 1 | grep -q -c "\-\-wip\-\-"; and  git reset HEAD~1
end

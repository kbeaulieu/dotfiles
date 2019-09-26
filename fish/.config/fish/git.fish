function _current_branch
  echo (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
end

abbr -g g git
abbr -g ga "git add"
abbr -g gaa "git add --all"

abbr -g gb "git branch"
abbr -g gba "git branch -a"
abbr -g ggsup "git branch --set-upstream-to=origin/(_current_branch)"

abbr -g gc "git commit"
abbr -g gca "git commit -a"
abbr -g gc! "git commit --amend"
abbr -g gca! "git commit -a --amend"
abbr -g gcn! "git commit --no-edit --amend"
abbr -g gcan! "git commit -a --no-edit --amend"

abbr -g gco "git checkout"
abbr -g gcb "git checkout -b"

abbr -g gd "git diff"
abbr -g gdc "git diff --cached"
abbr -g gdt "icdiff -s"
abbr -g gdtc "icdiff -s --cached"
abbr -g gwd "git webdiff"
abbr -g gwdc "git webdiff --cached"

abbr -g gfa "git fetch --all --prune"

abbr -g gl "git pull"
abbr -g ggpull "git pull origin (_current_branch)"
abbr -g glrom "git pull --rebase origin master"

abbr -g gp "git push"
abbr -g ggpush "git push origin (_current_branch)"
abbr -g gpsup "git push --set-upstream origin (_current_branch)"

abbr -g gignore "git update-index --assume-unchanged"
abbr -g gignored 'git ls-files -v | grep "^[[:lower:]]"'

abbr -g glg "git log --stat --color"
abbr -g glgp "git log --stat --color -p"
abbr -g glgg "git log --graph --color"
abbr -g glgga "git log --graph --decorate --all"
abbr -g glgm "git log --graph --max-count=10"
abbr -g glo "git log --oneline --decorate --color"
abbr -g glol "git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
abbr -g glola "git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
abbr -g glog "git log --oneline --decorate --color --graph"
abbr -g gloga "git log --oneline --decorate --color --graph --all"
abbr -g glogas "git log --oneline --decorate --color --graph --all --exclude=refs/stash"

abbr -g gwch "git whatchanged -p --abbrev-commit --pretty=medium"

abbr -g grb "git rebase"
abbr -g grba "git rebase --abort"
abbr -g grbc "git rebase --continue"
abbr -g grbi "git rebase -i"
abbr -g grbm "git rebase master"
abbr -g grbim "git rebase -i master"

abbr -g gr "git reset"

abbr -g gst "git status"
abbr -g gss "git status -s"
abbr -g gsb "git status -sb"

abbr -g gsps "git show --pretty=short --show-signature"
abbr -g gsf "git show --name-status --oneline"

alias gwip 'git add -A; git rm (git ls-files --deleted) 2> /dev/null; git commit -m "--wip--"'
function gunwip
  git log -n 1 | grep -q -c "\-\-wip\-\-"; and  git reset HEAD~1
end

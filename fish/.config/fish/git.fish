function _current_branch
  echo (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
end

alias g 'git'
alias ga 'git add'
alias gaa 'git add --all'
alias gapa 'git add --patch'

alias gb 'git branch'
alias gba 'git branch -a'
alias gbl 'git blame -b -w'
alias gbnm 'git branch --no-merged'
alias gbr 'git branch --remote'
alias gbd 'git branch -d'
alias gbfd 'git branch -D'
alias gbs 'git bisect'
alias gbsb 'git bisect bad'
alias gbsg 'git bisect good'
alias gbsr 'git bisect reset'
alias gbss 'git bisect start'

alias gc 'git commit'
alias gc! 'git commit --amend'
alias gca 'git commit -a'
alias gca! 'git commit -a --amend'
alias gcam 'git commit -a -m'
alias gcan! 'git commit -a -s --no-edit --amend'
alias gcb 'git checkout -b'
alias gcf 'git config --list'
alias gcl 'git clone --recursive'

function gccd -d 'Change directory to the repo after clone it'
  set -l repo $argv[1]
  set -l name (basename $repo .git)
  if [ (count $argv) -eq 2 ]
    set name $argv[2]
  end

  gcl $repo $name
  echo "Changing directory..."
  cd $name
end

function gclean
  git reset --hard
  git clean -dfx
end
alias gcm 'git checkout master'
alias gcmsg 'git commit -m'
alias gco 'git checkout'
alias gcount 'git shortlog -sn'
alias gcp 'git cherry-pick'
alias gcs 'git commit -S'

alias gd 'git diff'
alias gdca 'git diff --cached'
alias gdt 'git diff-tree --no-commit-id --name-only -r'
alias gdw 'git diff --word-diff'

alias gf 'git fetch'
alias gfa 'git fetch --all --prune'
alias gfo 'git fetch origin'

alias gg 'git gui citool'
alias gga 'git gui citool --amend'
alias ggpull 'git pull origin (_current_branch)'
alias ggpush 'git push origin (_current_branch)'
alias ggsup 'git branch --set-upstream-to=origin/(_current_branch)'
alias gpsup 'git push --set-upstream origin (_current_branch)'
#
alias gignore 'git update-index --assume-unchanged'
alias gignored 'git ls-files -v | grep "^[[:lower:]]"'
function git-svn-dcommit-push
  git svn dcommit
  git push github master:svntrunk
end

alias gk 'gitk --all --branches'
alias gke 'gitk --all (git log -g --pretty=format:%h)'

alias gl 'git pull'
alias glg 'git log --stat --color'
alias glgp 'git log --stat --color -p'
alias glgg 'git log --graph --color'
alias glgga 'git log --graph --decorate --all'
alias glgm 'git log --graph --max-count=10'
alias glo 'git log --oneline --decorate --color'
alias glol "git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glola "git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
alias glog 'git log --oneline --decorate --color --graph'
alias gloga 'git log --oneline --decorate --color --graph --all'
function glp
  if not [ -z $argv[1] ]
    git log --pretty=format:$argv[1]
  end
end

alias gm 'git merge'
alias gmom 'git merge origin/master'
alias gmt 'git mergetool --no-prompt'
alias gmtvim 'git mergetool --no-prompt --tool=vimdiff'
alias gmum 'git merge upstream/master'

alias gp 'git push'
alias gpd 'git push --dry-run'
function gpoat
  git push origin --all
  git push origin --tags
end
alias gpu 'git push upstream'
alias gpv 'git push -v'

alias gr 'git remote'
alias gra 'git remote add'
alias grb 'git rebase'
alias grba 'git rebase --abort'
alias grbc 'git rebase --continue'
alias grbi 'git rebase -i'
alias grbm 'git rebase master'
alias grbs 'git rebase --skip'
alias grh 'git reset HEAD'
alias grhh 'git reset HEAD --hard'
alias grmv 'git remote rename'
alias grrm 'git remote remove'
alias grset 'git remote set-url'
alias grt 'cd (git rev-parse --show-toplevel ; or echo ".")'
alias gru 'git reset --'
alias grup 'git remote update'
alias grv 'git remote -v'

alias gsb 'git status -sb'
alias gsd 'git svn dcommit'
alias gsi 'git submodule init'
alias gsps 'git show --pretty=short --show-signature'
alias gsr 'git svn rebase'
alias gss 'git status -s'
alias gst 'git status'
alias gsta 'git stash'
alias gstaa 'git stash apply'
alias gstd 'git stash drop'
alias gstl 'git stash list'
alias gstp 'git stash pop'
alias gsts 'git stash show --text'
alias gsu 'git submodule update --init'
alias gsf 'git submodule foreach'

alias gts 'git tag -s'

alias gunignore 'git update-index --no-assume-unchanged'
function gunwip
  git log -n 1 | grep -q -c "\-\-wip\-\-"
  git reset HEAD~1
end
alias gup 'git pull --rebase'
alias gupv 'git pull --rebase -v'

alias gvt 'git verify-tag'

alias gwch 'git whatchanged -p --abbrev-commit --pretty=medium'
alias gwip 'git add -A; git rm (git ls-files --deleted) 2> /dev/null; git commit -m "--wip--"'

alias wgloga 'watch -tc git log --color --oneline --decorate --graph --all'
alias wglog 'watch -tc git log --color --oneline --decorate --graph'
alias wgst 'watch -tc git status -sb'
alias gwd 'git webdiff'
alias gwdc 'git webdiff --cached'
alias gsf 'git show --name-status --oneline '
alias g-delete-old-branches 'git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
alias gcaa! 'git commit -a --amend --no-edit'
alias glogas 'git log --oneline --decorate --graph --exclude=refs/stash'
alias glrom 'git pull --rebase origin master'

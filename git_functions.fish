#!/usr/bin/env fish

function default
  for val in $argv
    if test "$val" != ""
      echo $val
      break
    end
  end
end

function git_diff_inclusive
  set rev (default "$argv[1]" "HEAD")
  git diff $rev~1..$rev $argv[2]
end

function git_delete_branch
  git branch -d $argv[1]
  git push origin :refs/heads/$argv[1]
end

function git_delete_tag
  git tag -d $argv[1]
  git push origin :refs/tags/$argv[1]
end

function git_upstream
  set rev (default "$argv[1]" (gcb))
  git branch -u "origin/$rev"
end

function gpull
  git pull --tags \
    || return 1
  git remote update origin --prune
  git ls-remote -h --refs origin | while read line
    set branch (basename "$line")
    set current_branch (git rev-parse --abbrev-ref HEAD)
    if test "$branch" = "$current_branch"
      git pull \
        || return 1
    else
      git fetch origin "$branch:$branch" \
        || return 1
    end
  end
  git submodule update --init --recursive \
    || return 1
end

alias gdi='git_diff_inclusive'
alias gdb='git_delete_branch'
alias gdt='git_delete_tag'
alias gup='git_upstream'
alias gcb='git rev-parse --abbrev-ref HEAD' # git current branch
alias gb='git checkout -b'
alias gd='git diff'
alias gc='git commit'
alias gch='git checkout'
alias gl="git log --oneline --decorate --color --graph"
alias gla="gl --all"
alias gll="git log --all --color --graph --abbrev-commit --pretty=format:'%C(red)%h%Creset%C(yellow)%d%Creset %s %C(green)%cr%C(white dim) %an%Creset'"
alias gpush='git push --all; git push --tags'
alias gpullhard='git reset --hard && gpull'
alias guc='git reset --soft HEAD~1' # git uncommit
alias gs='git status'
alias gaas='git add -A; gs'

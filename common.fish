#!/usr/bin/env fish

function take
  mkdir -p "$argv[1]" && cd "$argv[1]"
end

function jcar
  [ -z $argv[1] ] \
    && set 1 "Main"
  set fname (string replace --regex '(.*)\..*' '$1' "$argv[1]")
  javac $fname.java \
    && java $fname
end

function jbcar
  [ -z $argv[1] ] \
    && set 1 "Main"
  set fname (string replace --regex '(.*)\..*' '$1' "$argv[1]")
  [ ! -f $fname.java ] \
    && echo "File $fname.java not found." \
    && return 1
  [ ! -d "../bin" ] \
    && mkdir "../bin"
  javac -d "../bin" "$fname.java" \
    && java -classpath "../bin/" $fname
end

alias .='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ll='ls -lh'
alias la='ls -lah'
alias less='less -rSX'
alias cpr='cp -pr' # copy dir, preserve mode, ownership, timestamps
alias s='subl'

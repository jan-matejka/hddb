#! /usr/bin/env zsh

SELF=${0##*/}
. hddb-prelude

function _git-init() {
  local d=$(hddb path git)

  test -e "$d"/.git && f-git-initialized "$d"

  mkdir -p "$d" || return
  git init -q "$d"
}

function _git-init-readme() {
  local f=$(hddb path git-readme) || return

  echo "hddb database" > "$f" || return
  echo "https://github.com/yaccz/hddb" >> "$f" || return

  git add "$f" || return
  git commit -qm "Add README"
}

_git-init           || return
_git-init-readme    || return

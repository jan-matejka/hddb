#! /usr/bin/env zsh

SELF=${0##*/}
. hddb-prelude

check-arg link-target ${1:-}

test -x $1 || f-not-executable link-target $1

h=$(hddb-path meta-field-hook $HDDB_TABLE $HDDB_FIELD)
test -e $h && f-already-exists "hook" $h

ln -s $1 $h || return

git add $h || return
git commit $h -qm "Symlink hook $HDDB_TABLE $HDDB_FIELD"

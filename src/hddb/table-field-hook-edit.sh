#! /usr/bin/env zsh

SELF=${0##*/}
. hddb-prelude

h=$(hddb-path meta-field-hook $HDDB_TABLE $HDDB_FIELD)

test -L $h && f-symlink hook $h

touch $h      || return
chmod 700 $h  || return
$HDDB_VISUAL $h || return
git add $h || return
git commit $h -qm "Edit hook $HDDB_TABLE $HDDB_FIELD"

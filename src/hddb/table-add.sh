#! /usr/bin/env zsh

SELF=${0##*/}
. hddb-prelude

hddb-table-exists && f-table-already-exists

mp=$(hddb path meta-table $HDDB_TABLE)      || return
mfp=$(hddb path meta-fields $HDDB_TABLE)    || return
dp=$(hddb path data-table $HDDB_TABLE)      || return

mkdir -p $mp $mfp $dp  || return
touch $dp/.keep   || return
touch $mfp/.keep  || return

echo 0 > $(hddb path meta-table-last-id $HDDB_TABLE)    || return

git add $mp $dp || return
git commit $mp $dp -qm "Add table $HDDB_TABLE" || return

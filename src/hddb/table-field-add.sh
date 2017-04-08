#! /usr/bin/env zsh

SELF=${0##*/}
. hddb-prelude

hddb-table-exists || f-no-table

fp=$(hddb path meta-field $HDDB_TABLE $HDDB_FIELD) || return

mkdir -p $fp        || return
touch $fp/.keep     || return

git add $fp         || return
git commit $fp -qm "Add field $HDDB_FIELD to $HDDB_TABLE" || return

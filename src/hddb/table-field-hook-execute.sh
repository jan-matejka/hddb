#! /usr/bin/env zsh

SELF=${0##*/}
. hddb-prelude

h=$(hddb-path meta-field-hook $HDDB_TABLE $HDDB_FIELD)
test -e $h || return 0

$h > $HDDB_FIELD

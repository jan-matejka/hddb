#! /usr/bin/env zsh

SELF=${0##*/}
. hddb-prelude

check-arg field ${1:-}
export HDDB_FIELD="$1"
shift

hddb-table-exists || f-no-table

exec cmd-dispatch "$@"

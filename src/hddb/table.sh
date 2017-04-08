#! /usr/bin/env zsh

SELF=${0##*/}
. hddb-prelude

check-arg table ${1:-}
export HDDB_TABLE="$1"
shift

exec cmd-dispatch $@

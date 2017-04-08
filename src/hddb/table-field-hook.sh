#! /usr/bin/env zsh

SELF=${0##*/}
. hddb-prelude

hddb-table-field-exists || f-no-field
exec cmd-dispatch "$@"

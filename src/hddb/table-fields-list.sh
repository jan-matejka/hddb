#! /usr/bin/env zsh

SELF=${0##*/}
. hddb-prelude

hddb-table-exists || f-no-table

ls $(hddb path meta-fields $HDDB_TABLE)

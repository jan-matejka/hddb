#! /usr/bin/env zsh

SELF=${0##*/}
. hddb-prelude

echo $(( 1 + $(cat $(hddb path meta-table-last-id $HDDB_TABLE)) ))

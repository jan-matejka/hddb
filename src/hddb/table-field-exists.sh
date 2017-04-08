#! /usr/bin/env zsh

setopt no_unset

test -d $(hddb path meta-field $HDDB_TABLE $HDDB_FIELD)

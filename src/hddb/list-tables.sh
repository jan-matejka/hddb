#! /usr/bin/env zsh

SELF=${0##*/}
. hddb-prelude

mt=$(hddb path meta-tables) || return
tables=($mt/*(N))
print -n -f "%s\n" -m '*' ${^tables#$mt/}

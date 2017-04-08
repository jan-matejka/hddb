#! /usr/bin/env zsh

SELF=${0##*/}
. hddb-prelude

function p-root {
    # XDG Base Directory Specification v0.7
    echo ${HDDB_ROOT:-${XDG_DATA_HOME:-${HOME}/.local/share}/hddb}
}

function p-git {
    echo $(p-root)/git
}

function p-git-readme {
    echo $(p-git)/README
}

function p-meta {
    echo $(p-git)/meta
}

function p-meta-tables {
    echo $(p-meta)/table
}

function p-meta-table {
    echo $(p-meta-tables)/$1
}

function p-meta-table-last-id {
    echo $(p-meta-table $1)/last-id
}

function p-meta-fields {
    echo $(p-meta-table $1)/field
}

function p-meta-field {
    echo $(p-meta-fields $1)/$2
}

function p-meta-field-hook {
    echo $(p-meta-field "$@")/hook
}

function p-data-table {
    echo $(p-git)/table/$1
}

cmd="p-${1}"
shift
"${cmd}" "$@"

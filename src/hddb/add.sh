#! /usr/bin/env zsh

SELF=${0##*/}
. hddb-prelude

check-arg table ${1:-}
t=$1

check-git-clean


new_id=$(hddb table $t newid)
record_dir=$(hddb path data-table $t)/$new_id
mkdir -p $record_dir || return

fields=( $(hddb table $t fields list) )
cd $record_dir && {
    touch ${fields[@]} || return
    print -N ${fields[@]} | xargs -0 -I{} hddb table $t field {} hook execute || return
    ${HDDB_VISUAL} ${fields[@]} || return
}

id_file=$(hddb path meta-table-last-id $t)
echo $new_id > $id_file || return
git add $record_dir $id_file || return
git commit -qm "Add record $t $new_id"

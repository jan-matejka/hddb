  $ . ${TESTDIR}/setup

setup
#####

  $ hddb init
  $ hddb table t add
  $ hddb table t field f1 add
  $ hddb table t field f2 add

add records
###########

  $ VISUAL=true hddb add t
  $ VISUAL=true hddb add t
  $ hddb table t newid
  3

setup
#####

  $ setup-clean
  $ hddb init
  $ hddb table t add
  $ hddb table t field f add

add record with index overflowing order of magnitude
####################################################

  $ for i in {1..12}; do VISUAL=true hddb add t; done
  $ hddb table t newid
  13

setup
#####

  $ setup-clean
  $ hddb init
  $ hddb table t add
  $ hddb table t field f add

hddb add fails on unclean git
#############################

  $ echo 1 > $(hddb path meta-table-last-id t)

  $ VISUAL=true hddb add t
  hddb-add: fatal: unclean git work tree
   M meta/table/t/last-id
  [1]

setup
#####

  $ setup-clean
  $ setup-vim 'echo "x $1 y" > $1; echo $2 > $2'

  $ hddb init
  $ hddb table t add
  $ hddb table t field f1 add
  $ hddb table t field f2 add

hddb add using default VISUAL
#############################

  $ hddb add t

  $ cat $(hddb path data-table t)/1/f1
  x f1 y
  $ cat $(hddb path data-table t)/1/f2
  f2


setup
#####

  $ setup-script 'echo bar' $FAKEPATH/hook
  $ setup-vim "cp $FAKEPATH/hook"' $1'
  $ hddb table t field f1 hook edit
  $ setup-script 'echo foo' $FAKEPATH/hook
  $ hddb table t field f2 hook edit

hddb add with edit hook
#######################

  $ VISUAL="true" hddb add t
  $ cat $(hddb path data-table t)/2/f1
  bar
  $ cat $(hddb path data-table t)/2/f2
  foo

setup
#####

  $ hddb table t field f1 hook remove
  $ hddb table t field f2 hook remove
  $ setup-script 'echo qux' $FAKEPATH/hook1
  $ setup-script 'echo quux' $FAKEPATH/hook2
  $ hddb table t field f1 hook symlink $FAKEPATH/hook1
  $ hddb table t field f2 hook symlink $FAKEPATH/hook2

hddb add with symlink hook
##########################

  $ VISUAL="true" hddb add t
  $ cat $(hddb path data-table t)/3/f1
  qux
  $ cat $(hddb path data-table t)/3/f2
  quux

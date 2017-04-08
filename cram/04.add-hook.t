  $ . ${TESTDIR}/setup

setup
#####

  $ hddb init
  $ hddb table t add
  $ hddb table t field f add
  $ setup-script 'echo foo' $FAKEPATH/hook

setup edit hook
###############

  $ setup-vim "cp $FAKEPATH/hook"' $1'
  $ hddb table t field f hook edit

  $ VISUAL="true" hddb add t
  $ cat $(hddb path data-table t)/1/f
  foo

fail symlink hook
#################

  $ hddb table t field f hook symlink $FAKEPATH/hook
  hddb-table-field-hook-symlink: fatal: hook /tmp/*/f/hook already exists (glob)
  [1]

setup symlink hook
##################

  $ setup-vim false
  $ hddb table t field f hook remove
  $ hddb table t field f hook symlink $FAKEPATH/hook

fail edit hook
##############

  $ hddb table t field f hook edit
  hddb-table-field-hook-edit: fatal: hook /tmp/*/f/hook is symlink (glob)
  [1]

  $ hddb table t field f hook remove

invalid args
############

  $ hddb table t1 field f hook symlink $FAKEPATH/hook
  hddb-table-field: fatal: No such table t1
  [1]

  $ hddb table t field f2 hook symlink $FAKEPATH/hook
  hddb-table-field-hook: fatal: No such field f2
  [1]

  $ hddb table t field f2 hook edit
  hddb-table-field-hook: fatal: No such field f2
  [1]

  $ hddb table t field f2 hook remove
  hddb-table-field-hook: fatal: No such field f2
  [1]

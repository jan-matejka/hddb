setup
#####

  $ . ${TESTDIR}/setup

  $ hddb init
  $ hddb list-tables

add tables
##########

  $ hddb table qux add
  $ hddb list-tables
  qux

  $ hddb table t add
  $ hddb list-tables
  qux
  t

add fields
##########

  $ hddb table qux fields list

  $ hddb table qux field bar add
  $ hddb table qux fields list
  bar

  $ hddb table qux field foo add
  $ hddb table qux fields list
  bar
  foo

missing arguments
#################

  $ hddb table
  hddb-table: fatal: missing argument table
  [1]

  $ hddb table qux
  hddb-table: fatal: missing argument command
  [1]

  $ hddb table qux foo
  hddb-table: fatal: cannot execute hddb-table-foo
  [1]

  $ hddb table t field
  hddb-table-field: fatal: missing argument field
  [1]

  $ hddb table t field f
  hddb-table-field: fatal: missing argument command
  [1]

  $ hddb table t field f foo
  hddb-table-field: fatal: cannot execute hddb-table-field-foo
  [1]

invalid states
##############

  $ setup-clean

  $ hddb list-tables

  $ hddb table t fields list
  hddb-table-fields: fatal: No such table t
  [1]

  $ hddb table t field f add
  hddb-table-field: fatal: No such table t
  [1]

  $ hddb table t add
  fatal: Not a git repository: '*/git/.git' (glob)
  [128]

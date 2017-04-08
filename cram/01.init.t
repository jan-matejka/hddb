hddb init
#########

  $ . ${TESTDIR}/setup

  $ hddb init

fail repeated init
##################

  $ hddb init
  hddb-init: fatal: /tmp/cramtests* already initialized (glob)
  [1]

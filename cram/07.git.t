hddb git
##########

  $ . ${TESTDIR}/setup

  $ hddb init
  $ hddb git status
  On branch master
  nothing to commit, working tree clean

  $ hddb git log --oneline
  ??????? Add README (glob)

  $ hddb git badcommand
  git: 'badcommand' is not a git command. See 'git --help'.
  [1]

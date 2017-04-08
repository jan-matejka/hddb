hdnews-git
##########

  $ . ${TESTDIR}/setup

  $ hdnews-init
  Initialized empty Git repository in /tmp/*/git-wc/.git/ (glob)
  [master (root-commit) ???????] Add README (glob)
   1 file changed, 2 insertions(+)
   create mode 100644 README
  [master ???????] Init last_id (glob)
   1 file changed, 1 insertion(+)
   create mode 100644 news/.last_id

  $ hdnews-git status
  On branch master
  nothing to commit, working tree clean

  $ hdnews-git log --oneline
  ??????? Init last_id (glob)
  ??????? Add README (glob)

  $ hdnews-git badcommand
  git: 'badcommand' is not a git command. See 'git --help'.
  [1]

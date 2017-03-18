hdnews-init repeated
####################

  $ . ${TESTDIR}/setup

  $ hdnews-init
  Initialized empty Git repository in /tmp/cramtests-*/06.repeated-init.t/git-wc/.git/ (glob)
  [master (root-commit) ???????] Add README (glob)
   1 file changed, 2 insertions(+)
   create mode 100644 README
  [master ???????] Init last_id (glob)
   1 file changed, 1 insertion(+)
   create mode 100644 news/.last_id

  $ hdnews-init
  /tmp/cramtests-????????/06.repeated-init.t/git-wc already initialized (glob)
  [1]

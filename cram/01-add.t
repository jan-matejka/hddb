hdnews-add
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


  $ fake_xsel a
  $ fake_vim_add b

  $ hdnews-add
  [master ???????] Add news 1 (glob)
   3 files changed, 3 insertions(+), 1 deletion(-)
   create mode 100644 news/1/description
   create mode 100644 news/1/source

  $ cat ${GIT_WORK_TREE}/news/1/{source,description}
  a
  b

  $ fake_xsel c
  $ fake_vim_add d
  $ hdnews-add
  [master ???????] Add news 2 (glob)
   3 files changed, 3 insertions(+), 1 deletion(-)
   create mode 100644 news/2/description
   create mode 100644 news/2/source

  $ cat ${GIT_WORK_TREE}/news/2/{source,description}
  c
  d

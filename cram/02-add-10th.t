hdnews-add 10th
###############

  $ . ${TESTDIR}/setup

  $ hdnews-init >>/dev/null

  $ fake_xsel e
  $ fake_vim_add e
  $ write_id 9
  $ git commit -a -m "faking 9th" >>/dev/null
  $ hdnews-add >/dev/null

  $ cat ${GIT_WORK_TREE}/news/10/{source,description}
  e
  e

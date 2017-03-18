hdnews-add no source
####################

  $ . ${TESTDIR}/setup

  $ hdnews-init >>/dev/null

  $ fake_xsel ""
  $ fake_vim_add "x"

  $ hdnews-add
  Aborting - no source
  [1]

  $ new_id
  1

hdnews-add failed commit
########################

  $ . ${TESTDIR}/setup

  $ hdnews-init >>/dev/null

  $ fake_xsel ""
  $ fake_vim_add ""

  $ hdnews-add
  Aborting - no source
  [1]

  $ hdnews-add
  Aborting - commit already in progress
  ?? news/1/description
  ?? news/1/source
  [1]

hdnews-add failed commit
########################

  $ . ${TESTDIR}/setup

  $ hdnews-init >>/dev/null

  $ fake_xsel a
  $ fake_vim_add b

  $ fake_git_commit_fail 5
  $ hdnews-add
  [5]

  $ hdnews-add
  Aborting - commit already in progress
  M  news/.last_id
  A  news/1/description
  A  news/1/source
  [1]

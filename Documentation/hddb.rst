HDDB
####

Headdesk database
-----------------

:Manual section: 1
:Date: 2017-05-30
:Author: Jan Matějka yac@blesmrt.net
:Manual group: HDDB manual

SYNOPSIS
========

  hddb <command> [<args>]

DESCRIPTION
===========

HDDB is a command line interface to git/file-system based database with
focus on user experience, especially on record addition.

The file system is used as simple database while git is used for
versioning and distribution (in the DVCS sense) allowing offline work and
easy backups.

Commands that modify the database files also automatically commit the
changes. However, ``man 1 git-push`` must be called manually and if a
command fails, resulting into an unclean state the said state must be
resolved also manually see ``man 1 hddb-git``.

COMMANDS
========

* ``man 1 hddb-add``

* ``man 1 hddb-git``

* ``man 1 hddb-init``

* ``man 1 hddb-list-tables``

* ``man 1 hddb-path``

* ``man 1 hddb-table``

BUILD & INSTALLATION
====================

$ make && make check && make install

DEPENDENCIES
============

Build:

* python-docutils

* GNU make

Tests:

* ``cram <https://github.com/brodie/cram>``

Runtime:

* zsh

* git

SEE ALSO
========

* ``man 1 git``

.. include:: common-foot.rst

HDDB-PATH
#########

Print named path used by HDDB
-----------------------------

:Manual section: 1
:Date: 2017-05-30
:Author: Jan Matějka yac@blesmrt.net
:Manual group: HDDB manual

SYNOPSIS
========

  hddb path <name> [<args>]

DESCRIPTION
===========

Prints path named ``name``. This command is used to

* internally implement hddb commands

* define the HDDB file system sturcture

* possibly aid in scripting around the hddb core

PATHS
=====

root

  Root data directory. Defined by ``HDDB_ROOT``. See ``man 1
  hddb-init``.

git

  Git work tree.

git-readme

  Readme file of the git repository.

meta

  Metadata directory. Contains schema definitions, hooks, etc.

meta-tables

  Table definitions.

meta-table <table>

  Table ``table`` definition.

meta-table-last-id <table>

  File containing the index of last record withing the ``table``.

meta-fields <table>

  Field definitions of table ``table``.

meta-field <table> <field>

  Definition of field ``field`` within ``table``.

meta-field-hook <table> <field>

  Hook file for ``field`` within ``table``.

data-table <table>

  Data directory for table ``table``. Contains table records.

SEE ALSO
========

* ``man 1 hddb``

* ``man 1 hddb-add``

* ``man 1 hddb-table``

* ``man 1 hddb-table-field-hook``

.. include:: common-foot.rst

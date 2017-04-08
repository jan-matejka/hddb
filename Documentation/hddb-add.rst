HDDB-ADD
########

Add record to the database
--------------------------

:Manual section: 1
:Date: 2017-05-30
:Author: Jan Matějka yac@blesmrt.net
:Manual group: HDDB manual

SYNOPSIS
========

  hddb add <table>

DESCRIPTION
===========

Creates a new record in ``table``, executes hooks and opens the record
fields in ``HDDB_VISUAL`` for inspection or editing.

if ``HDDB_VISUAL`` exits with 0 the record is committed.

ENVIRONMENT VARIABLES
=====================

* HDDB_VISUAL specifies a visual editor to open record fields with.
  Defaults to ``VISUAL`` which defaults to ``vim``.

SEE ALSO
========

* ``man 1 hddb``

* ``man 1 hddb-init``

* ``man 1 hddb-path``

* ``man 1 hddb-table``

.. include:: common-foot.rst

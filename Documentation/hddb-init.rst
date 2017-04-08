HDDB-INIT
#########

Initialize HDDB database
------------------------

:Manual section: 1
:Date: 2017-05-30
:Author: Jan Matějka yac@blesmrt.net
:Manual group: HDDB manual

SYNOPSIS
========

  hddb init

DESCRIPTION
===========

Initializes git repository and its README file at ``HDDB_ROOT``.

ENVIRONMENT VARIABLES
=====================

* HDDB_ROOT specifies the root directory of HDDB data and metadata.
  Defaults to ``XDG_DATA_HOME``/hddb.

* XDG_DATA_HOME defined by
  `XDG Base Directory Specification v0.8 <https://standards.freedesktop.org/basedir-spec/basedir-spec-0.8.html>`__

SEE ALSO
========

* ``man 1 hddb``

* ``man 1 hddb-path``

* ``man 1 hddb-table``

.. include:: common-foot.rst

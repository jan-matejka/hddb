HDDB-TABLE-FIELD-HOOK-SYMLINK
#############################

Symlink a hook to existing executable
-------------------------------------

:Manual section: 1
:Date: 2017-05-30
:Author: Jan Matějka yac@blesmrt.net
:Manual group: HDDB manual

SYNOPSIS
========

  hddb table <table> field <field> hook symlink <link-target>

DESCRIPTION
===========

Symlinks hook for field ``field`` within table ``table`` to
``link-target``.

``link-target`` must be executable.

SEE ALSO
========

* ``man 1 hddb-table-field-hook``

* ``man 1 hddb``

.. include:: common-foot.rst

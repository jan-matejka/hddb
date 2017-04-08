HDDB-TABLE-FIELD-HOOK
#####################

Field hooks manipulation
------------------------

:Manual section: 1
:Date: 2017-05-30
:Author: Jan Matějka yac@blesmrt.net
:Manual group: HDDB manual

SYNOPSIS
========

  hddb table <table> field <field> hook <command> [<args>]

DESCRIPTION
===========

For creation or modification the hook can be either editted in place or
symlinked. Before changing its type or linking elsewhere the hook must be
removed first.

The hook is executed on record addition ``man 1 hddb-add`` before
``HDDB_VISUAL`` is started.

The hook takes no input and no arguments.

The hook's stdout is written into the ``field`` file in created record.

COMMANDS
========

* ``man 1 hddb-table-field-hook-edit``

* ``man 1 hddb-table-field-hook-execute``

* ``man 1 hddb-table-field-hook-remove``

* ``man 1 hddb-table-field-hook-symlink``

SEE ALSO
========

* ``man 1 hddb``

.. include:: common-foot.rst

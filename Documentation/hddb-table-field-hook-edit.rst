HDDB-TABLE-FIELD-HOOK-EDIT
##########################

Edit a hook
-----------

:Manual section: 1
:Date: 2017-05-30
:Author: Jan Matějka yac@blesmrt.net
:Manual group: HDDB manual

SYNOPSIS
========

  hddb table <table> field <field> hook edit

DESCRIPTION
===========

Open ``HDDB_VISUAL`` to edit hook for field ``field`` within table
``table``.

The hook is chmodded to 700 and committed iff ``HDDB_VISUAL`` exits with
exit code 0.

SEE ALSO
========

* ``man 1 hddb-table-field-hook``

* ``man 1 hddb``

.. include:: common-foot.rst

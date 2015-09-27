===
php
===

Formulas to set up and configure php and various php libraries.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``php``
-------

Installs the php package.

``php.apcu``
------------

Installs the php-apcu package.
Disabled by default on opensuse need server:php repo

``php.cli``
-----------

Installs the php-cli package.

``php.composer``
-----------

Installs [composer](https://getcomposer.org) and keeps it updated.

``php.curl``
------------

Installs the php5-curl package on Debian, and ensures that curl itself is
installed for RedHat systems, this is due to the curl libs being provided by
php-common, which will get installed with the main php package.

``php.fpm``
-----------

Installs the php-fpm package, starts the service, and enables it.

``php.gd``
----------

Installs the php-gd package.

``php.intl``
------------

Installs the php-intl package.

``php.imagick``
---------------

Installs the php-imagick package.
Disabled on opensuse not available.

``php.imap``
------------

Installs the php-imap package.

``php.json``
------------

Installs the php-json package.

``php.ldap``
------------

Installs the php-ldap package.

``php.mbstring``
----------------

Installs the php-mbstring package.

``php.mcrypt``
--------------

Installs the php-mcrypt package.


``php.memcache``
----------------

Installs the php-memcache package.
Disabled on opensuse need server:php:extensions repo

``php.memcached``
-----------------

Installs the php-memcached package.
Disabled on opensuse need server:php:extensions repo

``php.mysqlnd``
---------------

Installs the php-mysqlnd package.
Disabled on opensuse no package.

``php.pear``
------------

Installs the php-pear package.

``php.redis``
------------

Installs the php-redis package.
Disabled on opensuse need server:php:extensions repo

``php.pgsql``
-------------

Installs the php-pgsql package.

``php.soap``
------------

Installs the php-soap package.

``php.sqlite``
--------------

Installs the php-sqlite package,

``php.suhosin``
---------------

Installs the php-suhosin package.

``php.mongo``
-------------

Installs the php-mongo package.
Disabled on opensuse need server:php:extensions repo

``php.xml``
-----------

Installs the php-xml package.

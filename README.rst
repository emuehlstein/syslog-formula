syslog-formula
===============

Configures and starts syslog service. Currently the log file schema is based on the debian default. The formula allows
control if syslog should listen for tcp / udp connections. Further ikml logging (kernel) logging can be disabled, e.g. for lxc containers and logs can be redirected to an other server.

.. note::

   Contributions are welcome.

Available states
================

.. contents::
    :local:

``syslog``
------------

Install and configure the default syslog package and enable the service.

TODO:
 - Filter on RHEL5/6 for syslog/rsyslog
 - Add default config templates for RHEL5, RHEL6

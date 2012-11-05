aptcacher
=========

Install and manage apt cacher servers and clients via puppet.

Server
------

    node apt-server {
      aptcacher::conf { 'config':
        ensure => present,
        source => 'puppet:///files/aptcacher/config',
      }
    }

Client
------

    node apt-client {
      aptcacher::client { 'client':
        server => 'http://apt-server:3142',
      }
    }

License
-------

Apache License, Version 2.0

Contact
-------

Eric Cohen <eirc.eirc@gmail.com>

Support
-------

Please log tickets and issues at our [Github issues page](https://github.com/eirc/aptcacher/issues)

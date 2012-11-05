aptcacher
=========

Install and manage an apt cacher server via puppet.

    node apt-server {
      aptcacher::conf { 'config':
        ensure => present,
        source => 'puppet:///files/aptcacher/config',
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

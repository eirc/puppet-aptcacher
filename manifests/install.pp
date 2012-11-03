class aptcacher::install {
    package { $aptcacher::params::package_name:
        ensure => present,
    }
    package { $aptcacher::params::webserver_package_name:
        ensure => present,
    }
}

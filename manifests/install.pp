class aptcacher::install {
    package { $aptcacher::params::package_name:
        ensure => present,
    }
}

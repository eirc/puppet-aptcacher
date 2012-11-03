class aptcacher::config {
    file { $aptcacher::params::config_file:
        ensure  => file,
        owner   => root,
        group   => root,
        mode    => 644,
        source  => 'puppet:///modules/aptcacher/apt-cacher.conf',
        require => Class['aptcacher::install'],
        notify  => Class['aptcacher::service'],
    }

    file { $aptcacher::params::config_dir:
        ensure  => directory,
        recurse => true,
        purge   => true,
        force   => true,
        owner   => root,
        group   => root,
        require => Class['aptcacher::install'],
        notify  => Class['aptcacher::service'],
    }
}

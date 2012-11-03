define aptcacher::conf($ensure = 'present', $prio = 10, $source = undef, $content = undef) {
    include aptcacher

    file { "${aptcacher::params::config_dir}${prio}-${name}":
        ensure  => $ensure,
        owner   => root,
        group   => root,
        content => $content,
        source  => $source,
        require => Class['aptcacher'],
        notify  => Class['aptcacher::service'],
    }
}

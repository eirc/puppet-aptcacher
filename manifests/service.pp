class aptcacher::service {
    service { $aptcacher::params::service_name:
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        require    => Class['aptcacher::config'],
    }
}

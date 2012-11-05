define aptcacher::client ($server = 'localhost') {
  file { '/etc/apt/apt.conf.d/10proxy':
    ensure  => present,
    owner   => root,
    group   => root,
    content => "Acquire::http::Proxy \"${server}\";",
  }
}

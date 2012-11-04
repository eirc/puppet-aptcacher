class aptcacher::params {
    case $operatingsystem {
        /(Ubuntu|Debian)/: {
            $package_name = 'apt-cacher'
            $service_name = 'apt-cacher'
            $config_file = '/etc/apt-cacher/apt-cacher.conf'
            $config_dir = '/etc/apt-cacher/conf.d/'

            $webserver_package_name = 'apache2'
            $webserver_service_name = 'apache2'
        }
    }
}

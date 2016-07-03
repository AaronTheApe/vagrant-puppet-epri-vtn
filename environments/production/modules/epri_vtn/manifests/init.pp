class epri_vtn {
  include apt
  include postgresql::server

  exec { 'apt-get-update':
    command => '/usr/bin/apt-get update',
  }

  package { ['openjdk-7-jdk']:
    ensure => present,
    require    => Exec['apt-get-update'],
  }

  postgresql::server::db { 'testdb':
    user     => 'testuser',
    password => 'testpass',
    require => Class['postgresql::server'],
  }
}

class databases{
  include mysql::server

  mysql_database { 'mediawiki' :
    ensure => 'present',
  }
}

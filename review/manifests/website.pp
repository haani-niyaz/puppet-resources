class review::website(
  $docroot,
){

  class { '::apache' :}

  apache::vhost { 'mysite.com' :
    port    => 80,
    docroot => $docroot,
  }
  

  file { "$docroot/index.html" : 
    ensure  => 'present',
    content => template('review/index.erb'),
  }

}

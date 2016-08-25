class review (
  String $user = 'review'
){


   user { $user :
    shell   => '/bin/csh',
    require => File['/etc/shells'],
   }

  file { '/etc/shells' : 
    ensure => present,
    source => 'puppet:///modules/review/shells',
  }
 
  #  file { '/etc/motd' : 
  #    ensure  => 'present',
  #    content => template('review/motd-conditionals.erb'), 
  #  }




}

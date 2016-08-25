class system::iteradmins {
  require mysql::server

  Mysql_user {
    max_queries_per_hour => 600,
    ensure               => present,
  }


  $dbadmins =  {
    'zack@localhost'    => { 'max_queries_per_hour' => 1200 },
    'ralph@localhost'   => { 'ensure' => absent},
    'monica@localhost'  => {},
    'brad@localhost'    => {},
    'luke@localhost'    => {},
   }


  $dbadmins.each  | $username, $attributes| {
    mysql_user { $username :
      ensure               => $attributes['ensure'],
      max_queries_per_hour => $attributes['max_queries_per_hour'],
    }

  }



}




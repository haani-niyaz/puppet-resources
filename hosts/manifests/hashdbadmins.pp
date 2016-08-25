class system::hashdbadmins {
  require mysql::server

  $defaults = {
    'max_queries_per_hour' => 600,
    'ensure'               => present,
  }


  $dbadmins =  {
    'zack@localhost'    => { 'max_queries_per_hour' => 1200 },
    'ralph@localhost'   => { 'ensure' => absent},
    'monica@localhost'  => {},
    'brad@localhost'    => {},
    'luke@localhost'    => {},
   }

   create_resources('mysql_user', $dbadmins, $defaults)

}




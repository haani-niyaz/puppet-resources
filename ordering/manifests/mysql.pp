class ordering::mysql{
  require ordering::epel

  class {'::mysql::server' :
    root_password => 'root',
  }

  class {  '::mysql::bindings' :
    php_enable  => true,
    perl_enable => true,
  }


  contain ::mysql::server
  contain ::mysql::bindings


  }

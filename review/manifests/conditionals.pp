class review::conditionals{
  

  $os_msg =  $::osfamily ? {
    'redhat' => 'This is a RedHat machine',
    'ubuntu' => 'This is an Ubuntu machine',
  }

  notify { $os_msg : }


  if $::ipaddress =~ /^10\.|172\.(?:1[6-9]|2[0-9]|3[01])\.|192\.168\./ {
     $nat_msg = 'This machine is on a NAT network'
  }

  notify { $nat_msg : }


  $vm_msg = $::virtual ? {
      'physical'    => 'This is a physical machine', 
      'vmware'      => 'This is a VMware virtual machine', 
      'virtualbox'  => 'This is a VirtualBox virtual machine', 
  }

  notify { $vm_msg : }


  file { '/etc/motd' : 
    ensure   => 'present',
    content => template('review/motd-conditionals.erb'), 
  }



}

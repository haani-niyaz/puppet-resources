class ordering::epel{
 yumrepo { 'epel' :
    enabled => 1,
 }

 # If packages are to be installed in the catalogue, enable 'epel' repo  
 Yumrepo['epel'] -> Package <||>

}

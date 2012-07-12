# Base vagrant definition

class vagrant {
  include php 
  include php::dev 
  include mysql {
    $mysqlpassword => ''
  }
  include mysql::dev
  include webadmin {
    $webadminuser => "vagrant",
    $webadmingroup => "vagrant"
  }
}

include vagrant 

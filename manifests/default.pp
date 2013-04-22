# Base vagrant definition

stage {
  'prerun': before => Stage['main'];
}

class prerun {
  group { 'puppet': ensure => 'present' }

  # Bad things happen if apt-get update is not run on ubuntu initially.
  exec { 'apt-get update':
    command => '/usr/bin/apt-get update'
  }
}

class vagrant {
  class { 'php53':
    webadminuser => 'vagrant',
    webadmingroup => 'vagrant'
  }
  include php53::dev
  class { 'mysql5':
    mysqlpassword => '',
    webadminuser => 'vagrant',
    webadmingroup => 'vagrant'
  }
  include mysql5::dev
  class { 'webadmin':
    webadminuser => 'vagrant',
    webadmingroup => 'vagrant'
  }
  include drush
  class { 'nuams':
    webadminuser => 'vagrant',
  }
}

class {
  "prerun": stage => prerun;
  "vagrant": stage => main;
}

#include vagrant

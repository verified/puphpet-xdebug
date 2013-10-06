class xdebug::params {

  $install_cli = true

  case $::osfamily {
    'Debian': {
      $pkg      = 'php5-xdebug'
      $php      = 'php5-cli'
      $ini_file = '/etc/php5/mods-available/xdebug.ini'
    }
    default: {
      fail("Unsupported platform: ${::osfamily}")
    }
  }
}

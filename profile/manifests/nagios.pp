class profile::nagios{
  include apache
  include php
  include nagios::server
}

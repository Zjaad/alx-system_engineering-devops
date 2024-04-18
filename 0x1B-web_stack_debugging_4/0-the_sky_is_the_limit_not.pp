# 0-the_sky_is_the_limit_not.pp
# This manifest configures Nginx

exec { 'setLimit':
  path    => '/bin',
  command => "sed -i 's/15/2000/' /etc/default/nginx",
}

exec { 'reboot':
  command => '/usr/sbin/service nginx restart',
  require => Exec['setLimit'],
}

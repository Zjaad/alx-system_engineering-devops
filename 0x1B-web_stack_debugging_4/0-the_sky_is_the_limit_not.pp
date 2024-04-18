# 0-the_sky_is_the_limit_not.pp
# This manifest configures Nginx

exec { 'increase_file_limit':
  command  => 'sed -i "s/ULIMIT=\'-n 15\'/ULIMIT=\'-n 4096\'/" /etc/default/nginx',
  provider => shell,
}

exec { 'restart_nginx':
  command  => 'service nginx restart',
  provider => shell,
  require  => Exec['increase_file_limit'],
}

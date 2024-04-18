# 0-the_sky_is_the_limit_not.pp
# This manifest configures Nginx

exec { 'increase_file_limit':
  path    => '/bin',
  command  => 'sed -i "s/ULIMIT=\'-n 15\'/ULIMIT=\'-n 4096\'/" /etc/default/nginx',
}

exec { 'restart_nginx':
  command  => 'service nginx restart',
}

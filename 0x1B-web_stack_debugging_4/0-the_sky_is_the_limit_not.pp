# 0-the_sky_is_the_limit_not.pp
# This manifest configures Nginx

exec { 'set_max_connections':
  command => "sed -i 's/worker_connections 768;/worker_connections 2000;/' /etc/nginx/nginx.conf",
  path    => '/usr/bin:/bin:/usr/sbin:/sbin',
}

exec { 'restart_nginx':
  command     => '/usr/sbin/service nginx restart',
  subscribe   => Exec['set_max_connections'],
  refreshonly => true,
}

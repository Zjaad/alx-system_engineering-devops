# 0-the_sky_is_the_limit_not.pp
# This manifest configures Nginx

exec { 'increase_worker_connections':
  command  => "sed -i 's/worker_connections 768;/worker_connections 2000;/' /etc/nginx/nginx.conf",
  path     => '/bin:/usr/bin:/sbin:/usr/sbin',
  unless   => "grep -q 'worker_connections 2000;' /etc/nginx/nginx.conf",
  provider => shell,
  notify   => Exec['restart_nginx'],
}

exec { 'restart_nginx':
  command     => 'service nginx restart',
  provider    => shell,
  refreshonly => true,
}

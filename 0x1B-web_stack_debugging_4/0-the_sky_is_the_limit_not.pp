# 0-the_sky_is_the_limit_not.pp
# This manifest configures Nginx
class nginx_config {
	exec { 'optimize-nginx':
		command => '/bin/bash -c "sed -i \'s/worker_processes  1;/worker_processes  auto;/g\' /etc/nginx/nginx.conf && sed -i \'s/worker_connections  1024;/worker_connections  4096;/g\' /etc/nginx/nginx.conf && echo \'keepalive_timeout  65;\' >> /etc/nginx/nginx.conf && service nginx reload"',
		path    => ['/usr/bin', '/usr/sbin', '/bin', '/sbin'],
	}
}
include nginx_config

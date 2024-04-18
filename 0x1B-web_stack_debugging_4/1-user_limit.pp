# 1-user_limit.pp
# This manifest increases the file descriptor limits

file_line { 'holberton_soft_nofile':
	ensure => present,
	path   => '/etc/security/limits.conf',
	line   => 'holberton soft nofile 4096',
	match  => '^holberton soft nofile',
}

file_line { 'holberton_hard_nofile':
	ensure => present,
	path   => '/etc/security/limits.conf',
	line   => 'holberton hard nofile 10000',
	match  => '^holberton hard nofile',
}

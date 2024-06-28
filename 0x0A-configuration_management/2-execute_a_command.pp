# killing process by ppm.
exec { 'kill_killmenow':
  command => 'pkill killmenow',
  path    => ['/usr/bin', '/bin'],
}

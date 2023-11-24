# Execute command to kill killmenow
exec { 'killmenow':
  command  => 'pkill killmenow',
  provider => 'shell',
  returns  => [0, 1],
}

# 1-user_limit.pp
# This manifest increases the file descriptor limits

exec { 'soft_nofile':
  provider => shell,
  command  => 'sudo sed -i "s/nofile 5/nofile 50000/" /etc/security/limits.conf',
  before   => Exec['hard_nofile'],
}

exec { 'hard_nofile':
  provider => shell,
  command  => 'sudo sed -i "s/nofile 4/nofile 40000/" /etc/security/limits.conf',
}

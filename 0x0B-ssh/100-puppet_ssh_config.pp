# init.pp

file { '/home/obuntu/.ssh/config':
  ensure  => present,
  owner   => 'obuntu',
  group   => '~/.ssh/school',
  mode    => '0600',
  content => "Host your_server_hostname_or_ip\n
              IdentityFile ~/.ssh/school\n
              PasswordAuthentication no\n",
}

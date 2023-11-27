#!/usr/bin/env bash
#using puppet to connect without password

file{'/etc/ssh/ssh_config':
	ensure => present,
}
file_line{'Turn off passwd auth':
	path => '/etc/ssh/ssh_config',
	line => 'PasswordAuthencation no',
	match => '^#PasswordAuthentication',
}
file_line{'Declare Identity filee':
	path => '/etc/ssh/ssh_config',
	line => 'IdentityFile ~/.ssh/school',
	match => '^#IdentityFile',
}

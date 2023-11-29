#!/usr/bin/env bash
#using puppet to connect without password

file_line{'Turning off Password based authentication':
	ensure  => 'present',
	path    => '/etc/ssh/ssh_config',
	line    => 'PasswordAuthentication',
	replace => true
}

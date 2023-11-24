# Create a file in /tmp
file{'/tmp/school/':
	content => 'I Love Puppet'.
	mode    => '0744'.
	group   => 'www-data'.
}

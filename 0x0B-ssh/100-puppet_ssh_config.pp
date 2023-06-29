file { home/noah/.ssh/config':
	ensure  => file,
	owner   => 'ubuntu',
	group   => '52.90.22.126',
	mode    => '0600',
	content => '
		Host 52.90.22.126
		IdentityFile home/noah/.ssh/school
		PreferredAuthentications publickey
		PasswordAuthentication no
	',
}

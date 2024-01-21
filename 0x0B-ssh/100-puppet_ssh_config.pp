file { home/noah/.ssh/config:
	ensure  => file,
	owner   => ubuntu,
	group   => 54.161.235.10,
	mode    => 0600,
	content =>
		Host 54.161.235.10
		IdentityFile /home/noah/.ssh/school
		PreferredAuthentications publickey
		PasswordAuthentication no
	,
}

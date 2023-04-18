# Read the SSH config file
$file_contents = file('/etc/ssh/ssh_config')

# Search for IdentityFile lines and extract the file names
$public_keys = $file_contents.scan(/^[ \t]*IdentityFile[ \t]+(.+\.pub)\s*$/).flatten

# Iterate over the public keys and add them to the authorized_keys file
$public_keys.each |$key_file| {
  ssh_authorized_key { "ubuntu@100.26.236.125-${key_file}":
    ensure => present,
    type   => 'ssh-rsa',
    key    => file($key_file),
    user   => 'ubuntu', # replace with your username
  }
}

class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCujn+VsPp0JbRTLXxyAWJwhqs6NFCFfhXEyU0/vV2ONgfOhi2v3WRN7avddzOYUyr+iGoV2igKjUdVtd5L8Skmawyh5n3UBlUB4oGPKlHrsQ7EqNmu4b+VPC/rPrf4lMwNYJ5cNtwg2up65Nq+2D0aFUUT+80ADqGuebrCg3MEqVEXMV5kXiwdtGfrnA8+pNtoKNxv8kGB0mDUwBcesIZGw9zW0bR8W/F40kv0Bo51zwZrkajQOUbZ7rgg9FR7GDLdw/wrrlMcwPi/9cZghsD9yTrl6Fp4M9CbIdZ4vBA7ie0dY6nF1/QkMeEN2m0zkCsJyQh88HKis8bLMeJbjgSX',
  }  
}

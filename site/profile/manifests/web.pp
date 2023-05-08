class profile::web {
  include nginx

  file { 'index.html':
    path    => '/var/www/index.html',
    ensure  => file,
    content => 'Hello World!',
    owner   => 'root',
    mode    =>  '0655',
 }
}

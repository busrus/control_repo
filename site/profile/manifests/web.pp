class profile::web {
  include nginx

  file { 'index.html':
    path    => '/usr/share/nginx/html/index.html',
    ensure  => file,
    content => 'Hello World!',
    owner   => 'root',
    mode    =>  '0644',
 }
}

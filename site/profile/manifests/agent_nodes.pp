class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.puppet.vm':}
  dockeragent::node {'db.puppet.vm':}
  dockeragent::node {'minetest.puppet.vm':}
  dockeragent::node {'websrv.pupet.vm':}
  host {'web.puppet.vm':
    ensure => present,
    ip => '172.18.0.2',
  }
  host {'db.puppet.vm':
  ensure => present,
  ip => '172.18.0.3',
  }
  host {'websrv.puppet.vm':
  ensure => present,
  ip => '172.18.0.6',
  }
}

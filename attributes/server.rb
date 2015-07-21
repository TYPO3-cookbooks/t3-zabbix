default[:zabbix][:server][:version]           = "2.4.5"
default[:zabbix][:server][:branch]            = "ZABBIX%20Latest%20Stable"
default[:zabbix][:server][:configure_options] = [ "--with-libcurl","--with-net-snmp","--enable-ipv6","--with-jabber=/usr/","--with-ssh2","--with-mysql" ]
default[:zabbix][:web][:fqdn] = "monitoring.typo3.org"
default[:zabbix][:web_dir] = "/usr/local/zabbix/web"

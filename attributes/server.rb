node.override[:zabbix][:server][:version]           = "2.0.9"
node.override[:zabbix][:server][:branch]            = "ZABBIX%20Latest%20Stable"
node.override[:zabbix][:server][:configure_options] = [ "--with-libcurl","--with-net-snmp","--enable-ipv6","--with-jabber=/usr/","--with-ssh2","--with-mysql" ]
node.override[:zabbix][:web][:fqdn] = "monitoring.typo3.org"
node.override[:zabbix][:web_dir] = "/usr/local/zabbix/web"


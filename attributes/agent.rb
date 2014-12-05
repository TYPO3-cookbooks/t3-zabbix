node.override[:zabbix][:agent][:version]        = "2.0.11"
node.override[:zabbix][:agent][:servers]        = ['monitoring.typo3.org']
node.override[:zabbix][:agent][:servers_active] = ['monitoring.typo3.org']
node.override[:zabbix][:agent][:branch]         = "ZABBIX%20Latest%20Stable"
node.override[:zabbix][:agent][:install_method] = "source"
node.override[:zabbix][:agent][:include_dir]    = "/usr/local/zabbix/etc/zabbix_agentd.conf.d"


# only for the 2.0.10rc1
# node.override[:zabbix][:agent][:branch] = "ZABBIX%20Release%20Candidates"

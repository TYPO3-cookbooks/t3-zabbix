default[:zabbix][:agent][:version]        = "2.4.6"
default[:zabbix][:agent][:servers]        = ['10.186.2.148']
default[:zabbix][:agent][:servers_active] = ['10.186.2.148']
default[:zabbix][:agent][:branch]         = "ZABBIX%20Latest%20Stable"
default[:zabbix][:agent][:install_method] = "source"
default[:zabbix][:agent][:include_dir]    = "/usr/local/zabbix/etc/zabbix_agentd.conf.d"


# only for the 2.0.10rc1
# default[:zabbix][:agent][:branch] = "ZABBIX%20Release%20Candidates"

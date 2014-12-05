include_recipe "build-essential"
include_recipe "zabbix::agent_source"
include_recipe "zabbix-custom-checks::apt-update-check"
include_recipe "zabbix-custom-checks::chef-client"

# make sure to include the recipe that includes the resource to be rewinded (in this case zabbix::agent_source)
resources("template[#{node['zabbix']['etc_dir']}/zabbix_agentd.conf]").cookbook "t3-zabbix"

# why is writing LSB-compliant init scripts so hard?
resources("template[/etc/init.d/zabbix_agentd]").cookbook "t3-zabbix"

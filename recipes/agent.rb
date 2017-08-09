include_recipe "build-essential"
include_recipe "zabbix::agent_source"
include_recipe "zabbix-custom-checks::apt-update-check"
include_recipe "zabbix-custom-checks::chef-client"

# make sure to include the recipe that includes the resource to be rewinded (in this case zabbix::agent_source)
resources("template[#{node['zabbix']['etc_dir']}/zabbix_agentd.conf]").cookbook "t3-zabbix"

# why is writing LSB-compliant init scripts so hard?
resources("template[/etc/init.d/zabbix_agentd]").cookbook "t3-zabbix"

# in case of Debian 8+ systems, adjust systemd
# https://forge.typo3.org/issues/79563
# https://support.zabbix.com/browse/ZBX-11544
if node['lsb']['release'].to_i >= 8
  log 'Adjusting systemd\'s logind.conf to avoid ZBX-11544'
  node.default['systemd']['logind']['n_auto_v_ts'] = nil
  node.default['systemd']['logind']['remove_ipc'] = false
  include_recipe 'systemd::logind'
end

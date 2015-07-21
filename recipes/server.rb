# otherwise we often get "Out of resources when opening file './zabbix/history_log....' (Errcode: 24)"

# upgrade mysql cookbook and use this attribute (Steffen, you lazy boy!!)
# node.override[:mysql][:tunable]['open-files-limit'] = 10240
# workaround:
file "/etc/mysql/conf.d/zabbix-tuning.cnf" do
  content "[mysqld]\nopen-files-limit = 10240"
  notifies :restart, "service[mysql]"
end

[
  "database::mysql",
  "mysql::server",
  "zabbix",
  "zabbix::database",
  "zabbix::server",
  "zabbix::web_apache"
].each do |recipe|
  include_recipe recipe
end

# make sure to include the recipe that includes the resource to be rewinded (in this case zabbix::agent_source)
resources("template[#{node['zabbix']['etc_dir']}/zabbix_server.conf]").cookbook "t3-zabbix"

# if we do not restart the zabbix_server process from time to time, MySQL connections will
# time out, nodes will be flapping and we get thousands of emails.
cron "restart zabbix_server" do
  action :delete
end

# debug logging as the server annoys us
node.override['zabbix']['server']['log_level'] = 4
# make sure to disable housekeeping in Administration → General → Housekeeper

cron "housekeeping" do
  command "/usr/bin/mysql --skip-column-names -B -h #{node.zabbix.database.dbhost} -u #{node.zabbix.database.dbuser} -p#{node.zabbix.database.dbpassword} #{node.zabbix.database.dbname} -e \"CALL create_zabbix_partitions();\""
  hour 0
  minute 0
  user node.zabbix.login
end
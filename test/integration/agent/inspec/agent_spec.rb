control 't3zabbix-agent-1' do
  title 'Zabbix Agent'

  # can test this only on physical nodes.. :-(
  # if os['family'] == 'debian' && os['release'].to_i >= 8
  #   describe file('/etc/systemd/logind.conf') do
  #     its('content') { should match %r(RemoveIPC=no) }
  #   end
  # end

end

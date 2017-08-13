control 't3zabbix-agent-1' do
  title 'Zabbix Agent'

  # can test this only on physical nodes.. :-(
  # if os['family'] == 'debian' && os['release'].to_i >= 8
  #   describe file('/etc/systemd/logind.conf') do
  #     its('content') { should match %r(RemoveIPC=no) }
  #   end
  # end

end

control 't3zabbix-systemd' do
  title 'Verify zabbix agent'
  desc 'Verifies that RemoveIPC is set so that Zabbix doesn\'t crash. See https://forge.typo3.org/issues/79563'

  only_if do
    os[:family] == 'debian' && os.release.to_i >= 8
  end

  describe file('/etc/systemd/logind.conf') do
    its('content') { should match %r(RemoveIPC=no) }
  end

end

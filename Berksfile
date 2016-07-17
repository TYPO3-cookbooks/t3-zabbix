source "http://chef.typo3.org:26200"
source "https://supermarket.chef.io"

metadata

solver :ruby, :required

group :integration do
  cookbook 'apt'
end

cookbook 'zabbix-server-version-pin', :path => 'test/fixtures/cookbooks/zabbix-server-version-pin'

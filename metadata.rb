name             "t3-zabbix"
maintainer       "TYPO3 Association"
maintainer_email "steffen.gebert@typo3.org"
license          "Apache 2.0"
description      "Zabbix configuration"
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))
version          IO.read(File.join(File.dirname(__FILE__), 'VERSION')) rescue '0.0.1'

depends          "build-essential"
depends          "zabbix", "~> 0.0.43"
depends          "zabbix-custom-checks"

depends          "chef_handler", "< 3.0.0" # https://github.com/chef-cookbooks/chef_handler/issues/61
depends          "systemd",      "= 2.1.3"

# Only for testing
depends          "apt"

# For compatibility with Chef 12.x
depends "chef-sugar",   "< 5.0.0"

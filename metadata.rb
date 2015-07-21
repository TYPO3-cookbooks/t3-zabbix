name             "t3-zabbix"
maintainer       "TYPO3 Association"
maintainer_email "steffen.gebert@typo3.org"
license          "Apache 2.0"
description      "Zabbix configuration"
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))

version          "0.1.15"

depends          "build-essential"
depends          "zabbix", "= 0.0.43"
depends          "zabbix-custom-checks"

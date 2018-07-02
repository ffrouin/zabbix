# zabbix

Zabbix contribs

## Cryptocurrencies

You'll find in cryptocurrency directories a zabbix script formatting data
from application log files in order to be integrated into zabbix monitoring
system.

## Setup

You'll need to configure a zabbix agent UserParameter that will call that
script. Arguments will be pass by zabbix server application template.

	UserParameter=appcoind[*],/usr/local/bin/zabbix $1 $2

In a docker environnement, you'll have to add zabbix user in the docker
group and setup the new UserParameter (usually stored in
/etc/zabbix/zabbix_agentd.d/yourapp.conf)

	UserParameter=docker[*],docker exec -i $1 /usr/local/bin/zabbix $2 $3

First arg will be the docker container name, then zabbix script args.

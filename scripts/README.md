# zabbix

Zabbix contribs

## Zabbix SMS Free Telecom API

You may use this [procedure](http://www.freenews.fr/freenews-edition-nationale-299/free-mobile-170/nouvelle-option-notifications-par-sms-chez-free-mobile-14817) to enable SMS notification from the Free Telecom Internet API on your Free
Mobile Account.

## Setup

### Zabbix server - system

1. check the AlertScriptsPath from your /etc/zabbix/zabbix_server.conf file.

2. Put the sms-free-telecom.pl script in this path and check execution rights.

3. edit the sms-free-telecom.pl to update login and password.

### Zabbix server - web UI

1. create a new Administration->Media Type->Script name : sms-free-telecom.pl

2. check your Configuration->Action notification rules in order to verify this
new media script will be called.

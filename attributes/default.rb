default['rsyslog']['client']['config'] = "/etc/rsyslog.conf"
default['rsyslog']['client']['service'] = "rsyslog"

default['rsyslog']['server']['ipaddress'] = "10.13.37.23"
default['rsyslog']['server']['subnet'] = "10.13.37.0/24"

default['rsyslog']['server']['mysqlip'] = "127.0.0.1"
default['rsyslog']['server']['mysqldb'] = "Syslog"
default['rsyslog']['server']['mysqluser'] = "root"
default['rsyslog']['server']['mysqlpass'] = "secret"
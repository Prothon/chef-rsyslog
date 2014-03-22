#
# Cookbook Name:: rsyslog
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "rsyslog" do
	action :install
end

service "rsyslog" do
	action [ :start, :enable ]
end

template "/etc/rsyslog.conf" do
	source "rsyslog.conf.erb"
	mode "0644"
	owner "root"
	group "root"
	variables({
		:server_ip => "10.13.37.23"
	})
	notifies :restart, "service[rsyslog]", :immediately
end
